#!/bin/bash
function ReplaceUnderscoreWithSpace()
{

len=${#string}
i=0

while [ $i -lt $len ]; do
 dizi[$i]=${string:$i:1}
 i=$((i+1))
done

for ((a=0; a<$len; a++)); do
 if [[ "${dizi[$a]}" != "_" ]]; then
  break
 fi
done

for (( b=$((len-1)); b>0; b-- )); do
 if [[ "${dizi[$b]}" != "_" ]]; then
  b=${b}
  break
 fi
done

for (( k=$((a+1)); k<$b; k++ )); do	
 if [[ "${dizi[$k]}" = "_" ]]; then
  dizi[$k]=" "
 else
  :
 fi
done
printf "%s" "${dizi[@]}"
}
string=$1
ReplaceUnderscoreWithSpace
exit 0
