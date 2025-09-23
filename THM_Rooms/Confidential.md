

sudo apt install poppler-utils


buntu@thm-confidential:~/confidential$ ls
Repdf.pdf
ubuntu@thm-confidential:~/confidential$ 
ubuntu@thm-confidential:~/confidential$ 
ubuntu@thm-confidential:~/confidential$ pdfimages -list Repdf.pdf
page   num  type   width height color comp bpc  enc interp  object ID x-ppi y-ppi size ratio
--------------------------------------------------------------------------------------------
   1     0 image     850  1100  gray    1   8  image  yes       10  0    73    73 85.7K 9.4%
   1     1 image     187   169  rgb     3   8  image  yes       13  0    73    73 9060B 9.6%
   1     2 smask     187   169  gray    1   8  image  yes       13  0    73    73 3150B  10%
ubuntu@thm-confidential:~/confidential$ 
ubuntu@thm-confidential:~/confidential$ ls
Repdf.pdf
ubuntu@thm-confidential:~/confidential$ pdfimages -j Repdf.pdf img
ubuntu@thm-confidential:~/confidential$ 
