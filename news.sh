#!/bin/bash

#If config_api file exist it's because it's running locally
if [ -f ~/config_api ]
then
    echo "Running locally"
    #Getting API key from a flat file in my home directory
    source ~/config_api
else
    echo "Getting API key from GitHub Actions Secrets"
fi

#If there is no API key (-z)
if [ -z $api_key ]
then
    echo Please set API Key variable
    exit 1
fi

#word_search=$(contains("Trump")))
base_url="https://newsapi.org/v2/top-headlines?sources=bbc-news"
write_file="outbbc.json"

if [ -f ${write_file} ];
then
  echo "File already exists: ${write_file}"
fi

#curl -s -H 'X-API-KEY: ' https://newsapi.org/v2/top-headlines?sources=bbc-news -o outbbc.json | jq '.articles[] | select(.title | contains("Trump")) | { title, url }' outbbc.json
curl -s -H "X-API-KEY: ${api_key}" "${base_url}" -o "${write_file}"

cat "${write_file}" |jq '.articles[] | select(.title | contains("Trump")) | { title, url }'

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
