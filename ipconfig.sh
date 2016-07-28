#!/bin/sh

rd=$(tput setaf 1) # Red/Rood
gr=$(tput setaf 2) # Green/Groen
gl=$(tput setaf 3) # Yellow/Geel
bl=$(tput setaf 4) # Blue/Blauw
pa=$(tput setaf 5) # Purple/Paars
cy=$(tput setaf 6) # Cyan/Cyaan
wi=$(tput setaf 7) # White/Wit
rst=$(tput sgr0) # Text reset.
kabel=$( ifconfig | grep -A 1 "eth" | sed 'N;s/\n/ /;N;s/\n/ /' | awk '{ print $7}' | cut -d: -f2 )
wifi=$( ifconfig | grep -A 1 "wlan" | sed 'N;s/\n/ /;N;s/\n/ /' | awk '{ print $7}' | cut -d: -f2 )




read -p "Toets ${rd}1$rst voor het IP van uw ${gr}KABEL$rst aansluiting, Toets ${rd}2$rst voor het IP van uw ${gr}WIFI$rst aansluting, Druk op een willekeurige ${rd}Toets$rst voor ${gr}Afsluiten$rst " ans;
echo

case $ans in
    1)    echo && echo "U zit aangesloten via kabel, uw ip is: "${gr}$kabel ${rst} && echo &&  echo Gemaakt door ${rd}Patrick Pigmans${rst} voor${cy} Servicenet ITF${rst} && sleep 5 && echo ;;
    2)    echo && echo "U zit aangesloten via WIFI. Uw IP is: "${gr}$wifi ${rst} && echo && echo Gemaakt door ${rd}Patrick Pigmans${rst} voor${cy} Servicenet ITF${rst} &&  sleep 5 && echo;;
    *)    echo "Afsluiten" && echo && echo Gemaakt door ${rd}Patrick Pigmans${rst} voor${cy} Servicenet ITF${rst} && sleep 3 && echo;;
esac
