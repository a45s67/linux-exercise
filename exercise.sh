function range {
    local n=$1
    local ret="$n"
    while [[ n -ne 0 ]]
    do
        local pre=$n
        [[ n -gt 0 ]] && n=$((n-1)) || n=$((n+1))
        [[ pre -gt 0 ]] && ret="$n $ret" || ret="$ret $n"
    done
    echo $ret
}
range 12
range -3
