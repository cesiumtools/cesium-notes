──(kali㉿kali)-[~/Desktop/Tetrix]
└─$ ls     
__MACOSX  Tetrix.exe  Tetrix.exe-1741979048280.zip
                                                                             
┌──(kali㉿kali)-[~/Desktop/Tetrix]
└─$ strings -n 6 Tetrix.exe | grep -i "thm{"

THM{*********}
