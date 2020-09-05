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
