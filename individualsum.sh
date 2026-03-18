echo "enter a number:"
read num
sum=0
while [ $num -gt 0 ]
do
digit=$((num % 10))
square=$((digit * digit))
sum=$((sum + square))
num=$((num / 10))
done 
echo "sum of squares of digits = $sum"
