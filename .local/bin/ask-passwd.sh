#!/bin/sh
# Ask for password
# Dependencies: bemenu

# Usage: ask-passwd.sh <prompt>
[ "$#" -eq 1 ] || { printf 'Usage: ask-passwd.sh <prompt>\n' 1>&2; exit 1; }

prompt="$1"
while [ "${prompt%[[:space:]]}" != "$prompt" ]
do prompt="${prompt%[[:space:]]}"; done

password="$(printf '' | bemenu --password --prompt "$prompt")\\n"
printf '%b' "${password#\\n}"
