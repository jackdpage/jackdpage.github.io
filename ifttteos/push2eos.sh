COMMAND1=""

get_push () {
COMMAND2=$(curl -s --header 'Access-Token: PUT-YOUR-ACCESS-TOKEN-HERE' --data-urlencode limit=1 --get https://api.pushbullet.com/v2/pushes | sed 's/.*body":"\(.*\)"}].*/\1/' | tr [:lower:] [:upper:])
}

get_osc () {
while read line; do
case "$line" in
	*"$COMMAND2"*)
	echo "Received command $COMMAND2"
	python3 sendosc.py "$(echo $line | sed 's/.*,\(.*\)/\1/')" 1
	break
esac
done < translations.csv
}

while true; do
get_push
if [ "$COMMAND1" != "$COMMAND2" ]; then
	COMMAND1=$COMMAND2
	get_osc
fi
done
