#!/bin/bash
function deneme()
{
x=$1
i=0
while [ $i -lt ${#x} ]; do y[$i]=${x:$i:1};  i=$((i+1));done
for ((a=0; a<${#y}; a++))
do
if [ ${y[a]}!='_' ]
then
	break
fi
done

for (( (b=${#y}-1); b>0; b-- ))
do
if [ ${y[b]}!='_' ]
then
	break
fi
done

for (( k=a; k<b; k++ ))	
do
if [ ${y[k]} = '_' ]
then
	${y[k]}=' ' 
else
	${y[k]}
fi
done
echo ${y[@]}	
}
deneme "_safak_tugce_"
