ary=(1 2 3 4 aaa "aqq")
for i in ${ary[*]}
do 
    echo "i=$i"
done

for i in {1..5} ,what aa a a "><"
do 
    echo "i=$i"
done

for d in `ls`
do 
    echo $d
done

count=a

while [[ ! $count = a1111 ]]
do
  echo "count is equal to $count"
  count=${count}1
  let c=${count}+1
  echo "c=$c"
done
