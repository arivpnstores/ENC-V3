#!/bin/bash
# Valid Script
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
g="\e[36m"
gb='\033[0;37m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
purple() { echo -e "\\033[35;1m${*}\\033[0m"; }
tyblue() { echo -e "\\033[36;1m${*}\\033[0m"; }
yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
clear
function line_atas(){
echo -e " ${CYAN}┌─────────────────────────────────────┐${p}"
}
function line_bawah() {
echo -e " ${CYAN}└─────────────────────────────────────┘${p}"
}
function line_tengah() {
echo -e " ${CYAN}┌─────────────────────────────────────•${p}"
}
function line_tengh() {
echo -e " ${CYAN}└─────────────────────────────────────•${p}"
}
clear
# Link Installation
link="https://raw.githubusercontent.com/arivpnstores/ENC-V3/main/"

clear
line_atas
echo -e "${CYAN}  ${NC}${g}       .::.${NC}${p} PANEL ENC SHC ${g}.::.  $NC"
line_bawah
line_atas
echo -e " ${g}│  ${gb}[01] • $NC ${g}START ENC"
echo -e " ${g}│  ${gb}[02] • $NC ${g}DONWLOAD HASIL"
line_bawah
line_atas
echo -e " ${g}│  ${gb}[x]• ${b} Go Back To Menu"
line_bawah
line_tengah
echo -e " ${g}│   ${gb}Client Name      : $client"
echo -e " ${g}│   ${gb}License Status   : $statuslcns"
echo -e " ${g}│   ${gb}Expired          : ${yell}$dayexp Day"
line_tengh
echo -e   ""
read -p " Select menu :  "  opt
echo -e   ""
case $opt in
1) clear ; gass ;;
2) clear ; donw ;;
x) clear ; menu ;;
*) echo "salah ketik kontol" ; sleep 0.5 ; sans ;;
esac
