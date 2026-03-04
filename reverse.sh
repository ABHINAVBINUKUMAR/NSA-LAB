echo "enter a number:"
read num
orginal=$num
reverse=0
while [ $num -gt 0 ]
do
  	remainder=$(( num % 10 ))
  	everse=$(( reverse * 10 + remainder ))
	num=$(( num / 10 ))
done
if [ $orginal -eq $reverse ]
then
	echo "the number is palindrome"
else
	echo "the number is not palindrome"
fi
