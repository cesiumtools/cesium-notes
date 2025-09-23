

## Gyors (top portok)
nmap -T4 -F <TARGET>`

## Full TCP scan (minden port, gyors)
nmap -p- --min-rate=1000 -T4 -sV <TARGET> -oN nmap_full_<TARGET>.txt

## Közismert webportok + HTTP NSE script-ek
nmap -p 80,443,8080,8443 -sV -T4 --script=http-title,http-headers,http-enum <TARGET> -oN nmap_http_<TARGET>.txt

## Verziófelismerés egy porton
nmap -sV -p 22,80,443 <TARGET>

## Gyors host/port ellenőrzés (csak státusz)
nmap -Pn -sS --top-ports 100 <TARGET>

## Mentés XML-be (feldolgozható)
nmap -oX output_<TARGET>.xml -sV <TARGET>

nmap -sV -p 21,22,23,25,80,110,139,143,443,445,3306,8080 <TARGET>




Scan Type	Example Command
ARP Scan	sudo nmap -PR -sn MACHINE_IP/24
ICMP Echo Scan	sudo nmap -PE -sn MACHINE_IP/24
ICMP Timestamp Scan	sudo nmap -PP -sn MACHINE_IP/24
ICMP Address Mask Scan	sudo nmap -PM -sn MACHINE_IP/24
TCP SYN Ping Scan	sudo nmap -PS22,80,443 -sn MACHINE_IP/30
TCP ACK Ping Scan	sudo nmap -PA22,80,443 -sn MACHINE_IP/30
UDP Ping Scan	sudo nmap -PU53,161,162 -sn MACHINE_IP/30

Option	Purpose
-n	no DNS lookup
-R	reverse-DNS lookup for all hosts
-sn	host discovery only