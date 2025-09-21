# Nmap cheat sheet

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