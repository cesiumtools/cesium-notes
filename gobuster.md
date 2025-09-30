gobuster vhost -u https://futurevera.thm -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-20000.txt -k --append-domain




gobuster vhost -u https://futurevera.thm -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-110000.txt -k --append-domain



gobuster vhost -u http://10.10.100.112:8082/ -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-110000.txt -k --append-domain


gobuster vhost -u http://10.10.100.113:46748/login.php/ -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-110000.txt -k --append-domain


gobuster dir -u http://10.10.100.112:8081 -w /usr/share/wordlists/dirb/common.txt -x php,html,txt,js,json -t 40



gobuster dir -u http://10.10.100.111:8082 -w /usr/share/wordlists/dirb/common.txt -x php,html,txt,js,json -t 40

gobuster vhost -u http://10.10.100.111:8082/ -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-110000.txt -k --append-domain


gobuster dir -u http://10.10.100.111:8082/ -w /usr/share/wordlists/dirb/common.txt -t 30 -o gobuster.txt
