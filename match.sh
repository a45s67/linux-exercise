[[ $1 =~ ^[A~Z] ]] && echo "proper"

today=`date +%A`
[[ $today = "Saturday" ]]&& echo "today is Sat."
