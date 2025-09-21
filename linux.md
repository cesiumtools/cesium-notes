# Linux alap parancsok (gyakori pentest/feladatok)

## Port check nc-vel
`nc -vz <TARGET> <PORT>`

## Ping
`ping -c 4 <TARGET>`

## Teljes nmap scan mentéssel
`nmap -p- -sV -O -T4 <TARGET> -oN nmap_all_<TARGET>.txt`

## Fájl keresés
`find / -name "id_rsa" 2>/dev/null`

## Futtathatóvá tétel
`chmod +x script.sh && ./script.sh`
