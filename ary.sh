ary=(1 3 4 6 abc "123")
if [[ ${ary[$1]} =~ 1.* ]] 
then
    echo "ary[S1] = 1.*"
fi
if [[ ${ary[$1]} -gt 122 ]]
then echo " ${ary[$1]} >122 " 
fi
