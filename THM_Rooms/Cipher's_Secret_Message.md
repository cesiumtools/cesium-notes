Cipher's Secret Message
def dec(ciphertext):
    return "".join(
        chr((ord(c) - (base := ord('A') if c.isupper() else ord('a')) - i) % 26 + base)
        if c.isalpha() else c
        for i, c in enumerate(ciphertext)
    )

encrypted = "a_up4qr_kaiaf0_bujktaz_qm_su4ux_cpbq_ETZ_rhrudm"
decrypted = dec(encrypted)
print("THM{" + decrypted + "}")

Source:
https://rootplayer.medium.com/ciphers-secret-message-writeup-e8f6231998b2