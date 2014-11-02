#!/bin/bash
degisken="_merhaba_dunya_"
karakter_sayisi=${#degisken}
bos=" "

i=0
while [ $i -lt $karakter_sayisi ]; do
 karakter[$i]=${degisken:$i:1}
 i=$(( i + 1 ))
done

j=0
while [ $j -lt $(( karakter_sayisi - 2 )) ]; do
 if [[ "${karakter[$j]}"  =~ [a-zA-Z0-9] ]] && [[ "${karakter[$((j+1))]}" == "_" ]]; then
  karakter[$((j+1))]=${bos}
  printf "%s" "${karakter[@]}" 
 fi
j=$((j+1))
done
exit 0