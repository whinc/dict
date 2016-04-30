#! /usr/bin/sh
# dict.sh - provide translation service with Baidu translater API.

# configuration
q="$*"
from="auto"
to="zh"
appid=20160430000019979
salt="$RANDOM"
secret_key="hYUtVR6JR9kulHwTH3ap"
sign=$(echo -n "${appid}${q}${salt}${secret_key}" | md5sum | cut -d " " -f 1)

# construct query url 
url="http://api.fanyi.baidu.com/api/trans/vip/translate?q=${q}&from=${from}&to=${to}&appid=${appid}&salt=${salt}&sign=${sign}"

#echo "url:$url"

# request
json=$(curl "$url" 2> /dev/null)

# check result
if (( $? != 0)); then
    echo "query failed!"
fi

# parse result: extract the value of key "dst"
dst=$(echo -n "$json" | sed -r "s/.*dst\" *: *\"([^\"]*).*/\1/g")

echo -e "$dst"

