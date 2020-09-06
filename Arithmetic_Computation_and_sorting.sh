#!/bin/bash -x

read -p "Enter value of a : " a
read -p "Enter value of b : " b
read -p "Enter value of c : " c

function SortArrayDescending()
{
   newArray=("$@")
        while True
        do
                max=0
                for index in ${!newArray[@]}
                do
                        if (( ${max%%.*} == 0 || ${newArray[$index]%%.*} > ${max%%.*} ))
                        then
                                max=${newArray[$index]}
                                remove=$index
                        fi
                done
                SortedArrayDescending+=($max)
                unset newArray[$remove]
                length=${#newArray[@]}
                if [ $length -eq 0 ]
                then
                        break
                fi
        done
        echo "Sorted Array in Descending Order ${SortedArrayDescending[@]}"
}

function SortArrayAscending()
{
   newArray=("$@")
        while True
        do
                min=0
                for index in ${!newArray[@]}
                do
                         if (( ${min%%.*} == 0 || ${newArray[$index]%%.*} < ${min%%.*} ))
                        then
                                min=${newArray[$index]}
                                remove=$index
                        fi
                done
                SortedArrayAscending+=($min)
                unset newArray[$remove]
                length=${#newArray[@]}
                if [ $length -eq 0 ]
                then
                        break
                fi
        done
        echo "Sorted Array in Ascending Order ${SortedArrayAscending[@]}"
}

declare -A Result

# UC-2 Operation

compute=$(($a+$b*$c))
echo " a+b*c = $compute"
Result["UC2"]=$compute

# UC-3 Operations

compute=$(($a*$b+$c))
echo " a*b+c = $compute"
Result["UC3"]=$compute

# UC-4 Operation

compute=`echo $a $b $c |awk '{print $3+$1/$2 }'`
echo " c+a/b = $compute"
Result["UC4"]=$compute


# UC-5 Operation

compute=$(($a%$b+$c))
echo " a%b+c = $compute"
Result["UC5"]=$compute


for step in ${!Result[@]}
do
	ResultArray+=(${Result[$step]})
done

SortArrayDescending ${ResultArray[@]}

SortArrayAscending ${ResultArray[@]}

