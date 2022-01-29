#UseCase1

# Reading user Inputs :

read -p "Enter the value for a : " a 
read -p "Enter the value for b : " b 
read -p "Enter the value for c : " c 

#UseCase2
 computeResult1=$((a+b*c))
echo "Computing the result of a + b * c : $computeResult1"

#UseCase3
 computeResult2=$((a*b+c))
echo "Computing the result of a * b + c : $computeResult2"

#UseCase4
 computeResult3=$((c+a/b))
echo "Computing the result of c + a / b : $computeResult3"

#UseCase5
 computeResult4=$((a%b+c))
echo "Computing the result of a % b + c : $computeResult4"

#UseCase6

declare -A computeDictionary

computeDictionary[num1]="$computeResult1"
computeDictionary[num2]="$computeResult2"
computeDictionary[num3]="$computeResult3"
computeDictionary[num4]="$computeResult4"


echo "Compute Dictionary Value is : ${computeDictionary[@]}"

#UseCase 7

computeArray=(${computeDictionary[@]})

echo "Compute Array Value is : ${computeArray[@]}"
 
#UseCase 8

for (( i=0 ; i < ${#computeArray[@]}; i++ )) 
do
    for (( j=0 ; j < ${#computeArray[@]}; j++ )) 
    do
      if [[ ${computeArray[$j]} -gt  ${computeArray[$i]} ]]
      then
        tmp=${computeArray[$i]}
        computeArray[$i]=${computeArray[$j]}
        computeArray[$j]=${tmp}
      fi
    done
done
 
echo "Computing Acesnding value"
for acend  in ${computeArray[@]}
do
    
   echo "$acend"
done

#UseCase 9

for (( i=0 ; i < ${#computeArray[@]}; i++ )) 
do
    for (( j=0 ; j < ${#computeArray[@]}; j++ )) 
    do
      if [[ ${computeArray[$j]} -lt  ${computeArray[$i]} ]]
      then
        tmp=${computeArray[$i]}
        computeArray[$i]=${computeArray[$j]}
        computeArray[$j]=${tmp}
      fi
    done
done

echo "Computing Descending value"

for desce in "${computeArray[@]}"
do
    echo "$desce"
done