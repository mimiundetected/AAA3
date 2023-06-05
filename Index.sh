#!/bin/bash
#coded By : ./MimiUndetected   
GREEN='\e[38;5;82m'
CYAN='\e[38;5;45m'
RED='\e[38;5;196m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'
header(){
printf "${GREEN}"
printf "    ___        __                _____ _____ _____   _       ________                \n"
printf "        ____  __ _           _   _    _           _      _            _           _  \n"
printf "       / /  \/  (_)         (_) | |  | |         | |    | |          | |         | | \n"
printf "      / /| \  / |_ _ __ ___  _  | |  | |_ __   __| | ___| |_ ___  ___| |_ ___  __| | \n"
printf "     / / | |\/| | | '_ ` _ \| | | |  | | '_ \ / _` |/ _ \ __/ _ \/ __| __/ _ \/ _` | \n"
printf "  _ / /  | |  | | | | | | | | | | |__| | | | | (_| |  __/ ||  __/ (__| ||  __/ (_| | \n"
printf " (_)_/   |_|  |_|_|_| |_| |_|_|  \____/|_| |_|\__,_|\___|\__\___|\___|\__\___|\__,_| \n"                                                                                   
printf "Usage : ./index.sh | Backdoor Scanner           By ./MimiUndetected                 \n"
printf "${NC}\n" 
}
clear
chmod +x shellchecker
chmod +x scanner
header
echo "1. Mass Shell Checker"
echo "2. Backdoor Scanner"
echo -n "[+] Choose your option to use this tools :  "
read colok
if [ $colok -eq 1 ]; then
	./shellchecker
elif [ $colok -eq 2 ]; then
	./scanner
else
	echo "Please Input 1 or 2"
fi
