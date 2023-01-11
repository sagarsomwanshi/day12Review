#!/bin/bash -x
read -p "Please Enter a number : " x
prime=0
echo "Factors of $x : "

for((i=1;i<=$x;i++))
do
	if(($(($x%$i))==0))
	then
		for((j=2;j<=$(($i/2));j++))
		do
			if(($(($i%j))==0))
			then
				prime=1
			fi
		done
		if(($prime!=1))
		then
			echo "$i"
		fi


	fi
done
