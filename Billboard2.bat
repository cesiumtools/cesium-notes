┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ sudo gem install zsteg

Fetching rainbow-3.1.1.gem
Fetching zpng-0.4.5.gem
Fetching zsteg-0.2.13.gem
Fetching iostruct-0.5.0.gem
Successfully installed rainbow-3.1.1
Successfully installed zpng-0.4.5
Successfully installed iostruct-0.5.0
Successfully installed zsteg-0.2.13
Parsing documentation for rainbow-3.1.1
Installing ri documentation for rainbow-3.1.1
Parsing documentation for zpng-0.4.5
Installing ri documentation for zpng-0.4.5
Parsing documentation for iostruct-0.5.0
Installing ri documentation for iostruct-0.5.0
Parsing documentation for zsteg-0.2.13
Installing ri documentation for zsteg-0.2.13
Done installing documentation for rainbow, zpng, iostruct, zsteg after 0 seconds
4 gems installed
                                                                                                                                          
┌──(kali㉿kali)-[~/Desktop/OpenVPN]
└─$ zsteg -a image.bmp | grep 'CQ25'

b2,rgb,lsb,xy       .. text: "CQ25{34sy_h1dd3n_st3g0}"
