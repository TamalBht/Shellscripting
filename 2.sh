read -p "Enter a positive integer: " num
result = 1
for((i =1;i<=num;i++))
do 
	result = $((result*i))
done
echo "The factorial is: $result"
