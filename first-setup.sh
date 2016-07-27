#!/bin/sh

echo Welkom bij de First setup van de Service-pi toolbox
echo "(tools zijn: Systeminfo IPconfig Overscan rpi-update)"

echo als u dit wil installeren typ ja, anders nee
read x
if [ "x$x" = "xja" ] ; then
echo Ok, we gaan de tools klaar zetten voor U.
cd ./set_overscan
apt-get install gcc automake -y
make
chmod +x set_overscan.sh
mv set_overscan.sh /usr/bin/overscan
cd ..
cp -r ./set_overscan /usr/bin/set_overscan
chmod +x systeminfo
chmod +x ipconfig.sh
mv systeminfo /usr/bin/systeminfo
mv ipconfig.sh /usr/bin/ipconfig
sudo curl -L --output /usr/bin/rpi-update https://raw.githubusercontent.com/Hexxeh/rpi-update/master/rpi-update && sudo chmod +x /usr/bin/rpi-update
sleep 4
echo "we zijn klaar met het klaar zetten, zodra u deze tools wil gebruiken typ dan het volgende"
echo "systeminfo voor system info"
echo
echo "ipconfig voor ipconfig"
echo
echo "set_overscan voor overscan"
echo
echo "rpi-update voor een update te draaien voor de raspberry pi"
echo "Veel plezier!"
exit 1
fi


else
echo "installatie zonder raspberry pi onderdelen begonnen"
cd ./set_overscan
apt-get install gcc automake -y
make
chmod +x set_overscan.sh
mv set_overscan.sh /usr/bin/overscan
cd ..
cp -r ./set_overscan /usr/bin/set_overscan
chmod +x systeminfo
chmod +x ipconfig.sh
mv systeminfo /usr/bin/systeminfo
mv ipconfig.sh /usr/bin/ipconfig
sleep 4
echo "we zijn klaar met het klaar zetten, zodra u deze tools wil gebruiken typ dan het volgende"
echo "systeminfo voor system info"
echo
echo "ipconfig voor ipconfig"
echo
echo "set_overscan voor overscan"
echo
echo "Veel plezier!"
exit 1
fi

