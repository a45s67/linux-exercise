function add {
    local sum=0

    for i in $@
    do 
        let sum=$i+$sum
    done
    echo $sum
    return sum
}

function fib1 {
    local n=$1
    if [[ n -eq 1 ]]
    then 
        echo 0
    elif [[ n -eq 2 ]]
    then 
        echo 0 1
    else
    
    let n=$n-2

    local pp=0
    local p=1
    local ret="0 1"

    local now=0
    while [[ n -ge 1 ]]
    do 
        let "now=pp+p"
        ret="$ret $now"
        let pp=$p
        let p=now
        let n=n-1
    done

    echo $ret
    
    fi


}
function fib {
    local i=0

    if [[ $1 -gt 2 ]]
    then
        echo $(fib $(expr $1 - 1)) + $(fib $(expr $1 - 2))|bc -l

        #ret=$(fib $(expr $1 - 1) + fib $(expr $1 - 2))
        #echo $ret
    elif [[ $1 -eq 2 ]]
    then 
        echo 1
    else
        echo 0 
    fi

}
