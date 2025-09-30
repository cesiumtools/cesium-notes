──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ >....                                                                                                                                 
pattern=re.compile(b'CQ25\\{[^}]{1,500}\\}')
found=False

def bits_to_bytes(bits, msb_first=False):
    byts=[]
    for i in range(0, len(bits)//8):
        val=0
        if msb_first:
            for j in range(8):
                val=(val<<1)|bits[i*8+j]
        else:
            for j in range(8):
                val |= (bits[i*8+j]<<j)
        byts.append(val)
    return bytes(byts)

# 1) Interleaved channels LSBs and higher bitplanes
for bit in range(8):
    bits=[ (s>>bit)&1 for s in samples ]  # all samples interleaved (L+R+L+R…)
    for order in ('LSB','MSB'):
        data=bits_to_bytes(bits, msb_first=(order=='MSB'))
        m=pattern.search(data)
        if m:
            print(f'FOUND interleaved bit={bit} order={order}: {m.group(0).decode()}')
            found=True

# 2) Try shifted offsets (drop first k bits)
if not found:
    for bit in range(8):
        bits=[ (s>>bit)&1 for s in samples ]
        for shift in range(1,8):
            shifted=bits[shift:]
            for order in ('LSB','MSB'):
                data=bits_to_bytes(shifted, msb_first=(order=='MSB'))
                m=pattern.search(data)
                if m:
                    print(f'FOUND interleaved bit={bit} shift={shift} order={order}: {m.group(0).decode()}')
                    found=True
if not found:
    print("Still no CQ25 flag found. Next step: maybe spectrogram OCR slicing or encoding (Base64/hex) inside.")
PY

FOUND interleaved bit=0 order=MSB: CQ25{h4ll0w3n_1s_c0m1ng}
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ 
Nagyon jó, megvan 🎉

Hogyan találtuk meg a flaget?

Első próbák

Megnéztük zsteg, binwalk, foremost → semmi.

Készítettünk spektrogramot → ott látszott valami, de OCR-rel nem sikerült értelmesen kiolvasni.

Kipróbáltuk az LSB-t minden csatornában külön (left és right), több bitplane-en → nem adott ki CQ25{...} mintát.

Következő gyanú: interleaving

A WAV sztereó: a minták felváltva jönnek: L, R, L, R, ....

Ha minden csatornát külön vizsgálunk, csak a fele biteket kapjuk meg, így a szöveg torzul.

Ezért kellett az összes mintát egymás után interleaved módon venni (L+R+L+R…).

Bitplane és sorrend

Az LSB rejti a legtöbb ilyen stego-feladatban a flaget → ezért a bit=0 (least significant bit).

De a kérdés: hogyan kell összeállítani a byte-okat?

LSB-first: az első bit az alsó helyiértékre megy.

MSB-first: az első bit a legmagasabb helyiértékre megy.

Kiderült, hogy itt MSB-first módban jön ki értelmes ASCII.

Találat

Amint az interleaved minták LSB-jét (bit=0) MSB-first sorrendben értelmeztük, kijött:

CQ25{h4ll0w3n_1s_c0m1ng}