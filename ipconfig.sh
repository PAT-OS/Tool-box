PS3="Hoe zit u aangesloten op het netwerk via (1-3): "
echo
select name in Kabel Wifi Afsluiten
do
        break
done
if [ "$name" = "Kabel" ]; then
echo
echo "U zit aangesloten via $name."
echo
echo "Uw ip adress is"
echo
kabel=$( ifconfig | grep -A 1 "eth" | sed 'N;s/\n/ /;N;s/\n/ /' | awk '{ print $7}' | cut -d: -f2 )
kabel=$( ifconfig | grep -A 1 "enx" | sed 'N;s/\n/ /;N;s/\n/ /' | awk '{ print $7}' | cut -d: -f2 )
echo "${kabel}"
echo
echo "Druk op enter om door te gaan..."
read enter
exit 1
fi

if [ "$name" = "Wifi" ]; then
echo
echo "U zit aangelosten via $name."
echo
echo "Uw ip adress is"
echo
wifi=$( ifconfig | grep -A 1 "wlan" | sed 'N;s/\n/ /;N;s/\n/ /' | awk '{ print $7}' | cut -d: -f2 )
echo "${wifi}"
echo
echo "Druk op enter om door te gaan..."
read enter
exit 1
fi

if [ "$name" = "Afsluiten" ]; then
echo
echo "Druk op enter om af te sluiten..."
read enter
exit 1
fi
