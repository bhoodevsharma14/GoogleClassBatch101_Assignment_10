#!/bin/bash -x

read -p "Enter value of a : " a
read -p "Enter value of b : " b
read -p "Enter value of c : " c


# UC-2 Operation

compute=$(($a+$b*$c))
echo " a+b*c = $compute"


# UC-3 Operations

compute=$(($a*$b+$c))
echo " a*b+c = $compute"

# UC-4 Operation

compute=`echo $a $b $c |awk '{print $3+$1/$2 }'`
echo " c+a/b = $compute"

# UC-5 Operation

compute=$(($a%$b+$c))
echo " a%b+c = $compute"
