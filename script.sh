echo "argc: $#,argv: $@"
echo "arg1 = $1 , arg2 = $2"
pi=`echo "4*a(1)"|bc -l`
echo "pi = $pi"
expr $1 \* $2

read var
echo "$var"
if [[ $var =~ ((.)\1{3})+ ]]
then
    echo "match pattern"
else
    echo -e "not match ((.)\1{3})+"
fi

if [[ $var -gt 1 ]] && [[ $var -lt 4 ]]
then 
    echo "1 < $var < 4"
elif [[ $var -ge 10 ]]
then
    echo " $var >= 10"
else
    echo "?"
fi

