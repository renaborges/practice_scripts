#!/bin/bash

if [ -z $api_key ]
then
echo Please set API Key variable
exit 1
fi
#word_search=$(contains("Trump")))
base_url="https://newsapi.org/v2/top-headlines?sources=bbc-news"
write_file="outbbc.json"

#curl -s -H 'X-API-KEY: ' https://newsapi.org/v2/top-headlines?sources=bbc-news -o outbbc.json | jq '.articles[] | select(.title | contains("Trump")) | { title, url }' outbbc.json
curl -s -H "X-API-KEY: ${api_key}" "${base_url}" -o "${write_file}" | jq '.articles[] | select(.title | contains("Trump")) | { title, url }' "${write_file}"



#Comment block (: ') to open (' close)
: '
if grep -q "$word_search" outbbc.json
then
    echo Word $word_search Found

else
    echo Word $word_search NOT Found!!!
    exit_var=$?
fi

echo $exit_var
'
