#!/bin/bash

printf $(tput setaf 2; tput bold)'color show\n\n'$(tput sgr0)

for i in {0..7}; do
    echo $(tput setaf $i)"$i: Show me the money"$(tput sgr0)
done

printf '\n'$(tput setaf 2; tput setab 0; tput bold)'background color show'$(tput sgr0)
printf "\n\n"

j=7
for i in $(seq 0 7); do
    echo $(tput setaf $i; tput setab $j; tput bold)"f-$i,b-$j:Show me the money"$(tput sgr0)
    let j=j-1
done
