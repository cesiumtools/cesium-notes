                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ objdump -d --disassemble=xorEncrypt__pokerod_u162 pokerod | sed -n '1,240p'
objdump -d --disassemble=main pokerod | sed -n '1,240p'


pokerod:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

000000000000cc60 <xorEncrypt__pokerod_u162>:
    cc60:       41 57                   push   %r15
    cc62:       41 56                   push   %r14
    cc64:       41 55                   push   %r13
    cc66:       41 54                   push   %r12
    cc68:       55                      push   %rbp
    cc69:       48 89 fd                mov    %rdi,%rbp
    cc6c:       53                      push   %rbx
    cc6d:       48 83 ec 18             sub    $0x18,%rsp
    cc71:       48 85 ff                test   %rdi,%rdi
    cc74:       0f 88 ee 00 00 00       js     cd68 <xorEncrypt__pokerod_u162+0x108>
    cc7a:       49 89 f7                mov    %rsi,%r15
    cc7d:       89 d3                   mov    %edx,%ebx
    cc7f:       e8 2c fc ff ff          call   c8b0 <newSeq__pokerod_u32>
    cc84:       49 89 c6                mov    %rax,%r14
    cc87:       49 89 d4                mov    %rdx,%r12
    cc8a:       48 85 ed                test   %rbp,%rbp
    cc8d:       0f 84 0a 01 00 00       je     cd9d <xorEncrypt__pokerod_u162+0x13d>
    cc93:       31 ff                   xor    %edi,%edi
    cc95:       eb 3c                   jmp    ccd3 <xorEncrypt__pokerod_u162+0x73>
    cc97:       66 66 2e 0f 1f 84 00    data16 cs nopw 0x0(%rax,%rax,1)
    cc9e:       00 00 00 00 
    cca2:       66 66 2e 0f 1f 84 00    data16 cs nopw 0x0(%rax,%rax,1)
    cca9:       00 00 00 00 
    ccad:       66 66 2e 0f 1f 84 00    data16 cs nopw 0x0(%rax,%rax,1)
    ccb4:       00 00 00 00 
    ccb8:       0f 1f 84 00 00 00 00    nopl   0x0(%rax,%rax,1)
    ccbf:       00 
    ccc0:       89 d8                   mov    %ebx,%eax
    ccc2:       c1 e8 10                shr    $0x10,%eax
    ccc5:       41 88 44 3c 08          mov    %al,0x8(%r12,%rdi,1)
    ccca:       48 83 c7 01             add    $0x1,%rdi
    ccce:       48 39 fd                cmp    %rdi,%rbp
    ccd1:       7e 1a                   jle    cced <xorEncrypt__pokerod_u162+0x8d>
    ccd3:       69 db 0d 66 19 00       imul   $0x19660d,%ebx,%ebx
    ccd9:       81 c3 5f f3 6e 3c       add    $0x3c6ef35f,%ebx
    ccdf:       4c 39 f7                cmp    %r14,%rdi
    cce2:       7c dc                   jl     ccc0 <xorEncrypt__pokerod_u162+0x60>
    cce4:       49 8d 76 ff             lea    -0x1(%r14),%rsi
    cce8:       e8 d3 d5 ff ff          call   a2c0 <raiseIndexError2>
    cced:       48 c7 c0 a0 ff ff ff    mov    $0xffffffffffffffa0,%rax
    ccf4:       4c 89 34 24             mov    %r14,(%rsp)
    ccf8:       4c 89 64 24 08          mov    %r12,0x8(%rsp)
    ccfd:       64 80 38 00             cmpb   $0x0,%fs:(%rax)
    cd01:       0f 85 8f 00 00 00       jne    cd96 <xorEncrypt__pokerod_u162+0x136>
    cd07:       48 89 ef                mov    %rbp,%rdi
    cd0a:       e8 a1 fb ff ff          call   c8b0 <newSeq__pokerod_u32>
    cd0f:       31 ff                   xor    %edi,%edi
    cd11:       49 89 c5                mov    %rax,%r13
    cd14:       48 89 d3                mov    %rdx,%rbx
    cd17:       eb 28                   jmp    cd41 <xorEncrypt__pokerod_u162+0xe1>
    cd19:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    cd20:       4c 39 f7                cmp    %r14,%rdi
    cd23:       0f 8d b7 00 00 00       jge    cde0 <xorEncrypt__pokerod_u162+0x180>
    cd29:       41 0f b6 4c 3f 08       movzbl 0x8(%r15,%rdi,1),%ecx
    cd2f:       41 32 4c 3c 08          xor    0x8(%r12,%rdi,1),%cl
    cd34:       88 4c 3a 08             mov    %cl,0x8(%rdx,%rdi,1)
    cd38:       48 83 c7 01             add    $0x1,%rdi
    cd3c:       48 39 ef                cmp    %rbp,%rdi
    cd3f:       7d 7f                   jge    cdc0 <xorEncrypt__pokerod_u162+0x160>
    cd41:       48 39 c7                cmp    %rax,%rdi
    cd44:       7c da                   jl     cd20 <xorEncrypt__pokerod_u162+0xc0>
    cd46:       48 8d 70 ff             lea    -0x1(%rax),%rsi
    cd4a:       e8 71 d5 ff ff          call   a2c0 <raiseIndexError2>
    cd4f:       48 83 c4 18             add    $0x18,%rsp
    cd53:       4c 89 e8                mov    %r13,%rax
    cd56:       48 89 da                mov    %rbx,%rdx
    cd59:       5b                      pop    %rbx
    cd5a:       5d                      pop    %rbp
    cd5b:       41 5c                   pop    %r12
    cd5d:       41 5d                   pop    %r13
    cd5f:       41 5e                   pop    %r14
    cd61:       41 5f                   pop    %r15
    cd63:       c3                      ret
    cd64:       0f 1f 40 00             nopl   0x0(%rax)
    cd68:       48 bb ff ff ff ff ff    movabs $0x7fffffffffffffff,%rbx
    cd6f:       ff ff 7f 
    cd72:       31 f6                   xor    %esi,%esi
    cd74:       48 89 da                mov    %rbx,%rdx
    cd77:       e8 64 bb ff ff          call   88e0 <raiseRangeErrorI>
    cd7c:       48 c7 c0 a0 ff ff ff    mov    $0xffffffffffffffa0,%rax
    cd83:       64 80 38 00             cmpb   $0x0,%fs:(%rax)
    cd87:       75 0d                   jne    cd96 <xorEncrypt__pokerod_u162+0x136>
    cd89:       48 89 da                mov    %rbx,%rdx
    cd8c:       31 f6                   xor    %esi,%esi
    cd8e:       48 89 ef                mov    %rbp,%rdi
    cd91:       e8 4a bb ff ff          call   88e0 <raiseRangeErrorI>
    cd96:       31 db                   xor    %ebx,%ebx
    cd98:       45 31 ed                xor    %r13d,%r13d
    cd9b:       eb b2                   jmp    cd4f <xorEncrypt__pokerod_u162+0xef>
    cd9d:       48 89 04 24             mov    %rax,(%rsp)
    cda1:       48 c7 c0 a0 ff ff ff    mov    $0xffffffffffffffa0,%rax
    cda8:       48 89 54 24 08          mov    %rdx,0x8(%rsp)
    cdad:       64 80 38 00             cmpb   $0x0,%fs:(%rax)
    cdb1:       75 e3                   jne    cd96 <xorEncrypt__pokerod_u162+0x136>
    cdb3:       31 ff                   xor    %edi,%edi
    cdb5:       e8 f6 fa ff ff          call   c8b0 <newSeq__pokerod_u32>
    cdba:       49 89 c5                mov    %rax,%r13
    cdbd:       48 89 d3                mov    %rdx,%rbx
    cdc0:       48 8b 04 24             mov    (%rsp),%rax
    cdc4:       48 8b 54 24 08          mov    0x8(%rsp),%rdx
    cdc9:       48 89 c7                mov    %rax,%rdi
    cdcc:       48 89 d6                mov    %rdx,%rsi
    cdcf:       e8 2c fb ff ff          call   c900 <eqdestroy___pokerod_u117>
    cdd4:       e9 76 ff ff ff          jmp    cd4f <xorEncrypt__pokerod_u162+0xef>
    cdd9:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
    cde0:       49 8d 76 ff             lea    -0x1(%r14),%rsi
    cde4:       e8 d7 d4 ff ff          call   a2c0 <raiseIndexError2>
    cde9:       e9 61 ff ff ff          jmp    cd4f <xorEncrypt__pokerod_u162+0xef>

Disassembly of section .fini:

pokerod:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

00000000000012d0 <main>:
    12d0:       48 83 ec 08             sub    $0x8,%rsp
    12d4:       48 89 35 8d ff 00 00    mov    %rsi,0xff8d(%rip)        # 11268 <cmdLine>
    12db:       89 3d 8f ff 00 00       mov    %edi,0xff8f(%rip)        # 11270 <cmdCount>
    12e1:       48 89 15 78 ff 00 00    mov    %rdx,0xff78(%rip)        # 11260 <gEnv>
    12e8:       e8 33 b7 00 00          call   ca20 <atmdotdotatsdotdotatsdotdotatsdotdotatsdotdotatsdotchoosenimatstoolchainsatsnimminus2dot2dot4atslibatssystemdotnim_Init000>
    12ed:       e8 fe ba 00 00          call   cdf0 <main__pokerod_u195>
    12f2:       e8 c9 b6 00 00          call   c9c0 <nimTestErrorFlag>
    12f7:       8b 05 5b ff 00 00       mov    0xff5b(%rip),%eax        # 11258 <nim_program_result>
    12fd:       48 83 c4 08             add    $0x8,%rsp
    1301:       c3                      ret

Disassembly of section .fini:
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ 
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ 
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ 
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ # 1) dump the 32 encrypted bytes
dd if=pokerod bs=1 skip=54560 count=32 2>/dev/null | xxd -g 1 -u

# 2) disassemble the helper that likely prepares/keeps the flag & seed
objdump -d --disassemble=main__pokerod_u195 pokerod | sed -n '1,240p'

00000000: 20 00 00 00 00 00 00 40 76 5E 6A EF 45 74 42 71   ......@v^j.EtBq
00000010: BF 45 AF 00 2A 75 FF 65 4E E5 C6 6E 1C 18 9B B3  .E..*u.eN..n....

pokerod:     file format elf64-x86-64


Disassembly of section .init:

Disassembly of section .plt:

Disassembly of section .plt.got:

Disassembly of section .text:

000000000000cdf0 <main__pokerod_u195>:
    cdf0:       41 56                   push   %r14
    cdf2:       be 01 00 00 00          mov    $0x1,%esi
    cdf7:       48 8d 3d d2 3f 00 00    lea    0x3fd2(%rip),%rdi        # 10dd0 <TM__xrbkmOY9b1OBM0sYlMZSA0g_2>
    cdfe:       41 55                   push   %r13
    ce00:       41 54                   push   %r12
    ce02:       55                      push   %rbp
    ce03:       53                      push   %rbx
    ce04:       e8 17 f3 ff ff          call   c120 <echoBinSafe>
    ce09:       48 8b 3d 00 44 00 00    mov    0x4400(%rip),%rdi        # 11210 <stdin@GLIBC_2.2.5>
    ce10:       e8 bb 66 ff ff          call   34d0 <readLine__stdZsyncio_u318>
    ce15:       49 c7 c6 a0 ff ff ff    mov    $0xffffffffffffffa0,%r14
    ce1c:       48 89 d3                mov    %rdx,%rbx
    ce1f:       64 41 80 3e 00          cmpb   $0x0,%fs:(%r14)
    ce24:       0f 85 d6 00 00 00       jne    cf00 <main__pokerod_u195+0x110>
    ce2a:       48 89 c7                mov    %rax,%rdi
    ce2d:       4c 8d 05 2c 07 00 00    lea    0x72c(%rip),%r8        # d560 <TM__xrbkmOY9b1OBM0sYlMZSA0g_4>
    ce34:       48 89 de                mov    %rbx,%rsi
    ce37:       45 31 ed                xor    %r13d,%r13d
    ce3a:       b9 01 00 00 00          mov    $0x1,%ecx
    ce3f:       ba 01 00 00 00          mov    $0x1,%edx
    ce44:       45 31 e4                xor    %r12d,%r12d
    ce47:       e8 84 fc ff ff          call   cad0 <nsuStrip>
    ce4c:       64 41 80 3e 00          cmpb   $0x0,%fs:(%r14)
    ce51:       48 89 c7                mov    %rax,%rdi
    ce54:       48 89 d5                mov    %rdx,%rbp
    ce57:       75 48                   jne    cea1 <main__pokerod_u195+0xb1>
    ce59:       ba 87 11 47 14          mov    $0x14471187,%edx
    ce5e:       48 89 ee                mov    %rbp,%rsi
    ce61:       e8 fa fd ff ff          call   cc60 <xorEncrypt__pokerod_u162>
    ce66:       64 41 80 3e 00          cmpb   $0x0,%fs:(%r14)
    ce6b:       49 89 c5                mov    %rax,%r13
    ce6e:       49 89 d4                mov    %rdx,%r12
    ce71:       75 2e                   jne    cea1 <main__pokerod_u195+0xb1>
    ce73:       48 8b 15 46 3f 00 00    mov    0x3f46(%rip),%rdx        # 10dc0 <encryptedFlag__pokerod_u10>
    ce7a:       48 8b 0d 47 3f 00 00    mov    0x3f47(%rip),%rcx        # 10dc8 <encryptedFlag__pokerod_u10+0x8>
    ce81:       4c 89 e6                mov    %r12,%rsi
    ce84:       4c 89 ef                mov    %r13,%rdi
    ce87:       e8 a4 fa ff ff          call   c930 <eqeq___pokerod_u198>
    ce8c:       be 01 00 00 00          mov    $0x1,%esi
    ce91:       84 c0                   test   %al,%al
    ce93:       75 3b                   jne    ced0 <main__pokerod_u195+0xe0>
    ce95:       48 8d 3d 04 3f 00 00    lea    0x3f04(%rip),%rdi        # 10da0 <TM__xrbkmOY9b1OBM0sYlMZSA0g_10>
    ce9c:       e8 7f f2 ff ff          call   c120 <echoBinSafe>
    cea1:       4c 89 ef                mov    %r13,%rdi
    cea4:       4c 89 e6                mov    %r12,%rsi
    cea7:       e8 54 fa ff ff          call   c900 <eqdestroy___pokerod_u117>
    ceac:       48 85 db                test   %rbx,%rbx
    ceaf:       74 06                   je     ceb7 <main__pokerod_u195+0xc7>
    ceb1:       f6 43 07 40             testb  $0x40,0x7(%rbx)
    ceb5:       74 39                   je     cef0 <main__pokerod_u195+0x100>
    ceb7:       48 85 ed                test   %rbp,%rbp
    ceba:       74 06                   je     cec2 <main__pokerod_u195+0xd2>
    cebc:       f6 45 07 40             testb  $0x40,0x7(%rbp)
    cec0:       74 1e                   je     cee0 <main__pokerod_u195+0xf0>
    cec2:       5b                      pop    %rbx
    cec3:       5d                      pop    %rbp
    cec4:       41 5c                   pop    %r12
    cec6:       41 5d                   pop    %r13
    cec8:       41 5e                   pop    %r14
    ceca:       c3                      ret
    cecb:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
    ced0:       48 8d 3d d9 3e 00 00    lea    0x3ed9(%rip),%rdi        # 10db0 <TM__xrbkmOY9b1OBM0sYlMZSA0g_8>
    ced7:       e8 44 f2 ff ff          call   c120 <echoBinSafe>
    cedc:       eb c3                   jmp    cea1 <main__pokerod_u195+0xb1>
    cede:       66 90                   xchg   %ax,%ax
    cee0:       48 89 ef                mov    %rbp,%rdi
    cee3:       5b                      pop    %rbx
    cee4:       5d                      pop    %rbp
    cee5:       41 5c                   pop    %r12
    cee7:       41 5d                   pop    %r13
    cee9:       41 5e                   pop    %r14
    ceeb:       e9 20 96 ff ff          jmp    6510 <deallocShared>
    cef0:       48 89 df                mov    %rbx,%rdi
    cef3:       e8 18 96 ff ff          call   6510 <deallocShared>
    cef8:       eb bd                   jmp    ceb7 <main__pokerod_u195+0xc7>
    cefa:       66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)
    cf00:       31 ff                   xor    %edi,%edi
    cf02:       31 f6                   xor    %esi,%esi
    cf04:       e8 f7 f9 ff ff          call   c900 <eqdestroy___pokerod_u117>
    cf09:       48 85 db                test   %rbx,%rbx
    cf0c:       74 b4                   je     cec2 <main__pokerod_u195+0xd2>
    cf0e:       48 89 df                mov    %rbx,%rdi
    cf11:       f6 43 07 40             testb  $0x40,0x7(%rbx)
    cf15:       75 ab                   jne    cec2 <main__pokerod_u195+0xd2>
    cf17:       eb ca                   jmp    cee3 <main__pokerod_u195+0xf3>

Disassembly of section .fini:
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ 
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ 
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ 
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ 
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ ./pokerod 
Enter the flag:
geci
Incorrect.
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ 
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ 
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ 
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ # 1) Ellenőrzésképp dumpoljuk a tényleges 32 bájt ciphertextet (a +8-as eltolástól):
dd if=pokerod bs=1 skip=$((0xD520+8)) count=32 2>/dev/null | xxd -g 1 -u

# 2) Ugyanezt kiolvassuk és Pythonban visszafejtjük a LCG keystreammel (seed=0x14471187):
dd if=pokerod bs=1 skip=$((0xD520+8)) count=32 2>/dev/null | python3 - <<'PY'
import sys
ct = sys.stdin.buffer.read()
seed = 0x14471187
x = seed
ks = []
for _ in range(len(ct)):
    x = (x * 0x19660d + 0x3c6ef35f) & 0xffffffff
    ks.append((x >> 16) & 0xff)
pt = bytes(c ^ k for c,k in zip(ct, ks))
print(pt.decode('utf-8', errors='replace'))
PY

00000000: 76 5E 6A EF 45 74 42 71 BF 45 AF 00 2A 75 FF 65  v^j.EtBq.E..*u.e
00000010: 4E E5 C6 6E 1C 18 9B B3 0A 4B 3E 2D 1B 6C C6 67  N..n.....K>-.l.g
SyntaxError: Non-UTF-8 code starting with '\xef' in file <stdin> on line 1, but no encoding declared; see https://peps.python.org/pep-0263/ for details                                                                                                                             
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ dd if=pokerod bs=1 skip=$((0xD520+8)) count=32 of=ct.bin status=progress

32+0 records in
32+0 records out
32 bytes copied, 0.00883797 s, 3.6 kB/s
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ python3 - <<'PY'
from pathlib import Path
ct = Path('ct.bin').read_bytes()
seed = 0x14471187
x = seed
ks = []
for _ in range(len(ct)):
    x = (x * 0x19660d + 0x3c6ef35f) & 0xffffffff
    ks.append((x >> 16) & 0xff)
pt = bytes(c ^ k for c,k in zip(ct, ks))
print(pt.decode('utf-8', errors='replace'))
PY

CQ25{sn0rl4x_sl33ps_0n_th3_tr33}
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ 
