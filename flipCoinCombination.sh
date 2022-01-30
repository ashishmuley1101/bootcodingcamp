# Question 2
# UseCase 1

CoinFlip=$((RANDOM%2))
if [ ${CoinFlip} -eq 0 ]
 then
    echo "HEADS"
elif [ ${CoinFlip} -eq 1 ]
 then
    echo "TAILS"
fi