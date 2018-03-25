clear
res=0
echo "enter first number"
read n1
echo "enter second number"
read n2
c="y"
while [ $c="y" ]
do
	echo "1.addition"
	echo "2.subtraction"
	echo "3.multiplication"
	echo "4.division"
	echo "5.modulus"
	echo "enter choice"
	read ch
	case $ch in 
		1) res=`expr $n1 + $n2`
		   echo "$res"
			;;
		2) res=`expr $n1 - $n2`
			echo "$res"
			;;
		3)res=`expr $n1 \* $n2`
			echo "$res"
			;;
		4) res=`expr $n1 / $n2`
			echo "$res"
			;;
		5) res=`expr $n1 % $n2`
			echo "$res"
			;;
		*)
		echo "unknown option"
		;;
	esac
	echo "continue(y/n)"
	read c
	if [ $c = "n" ]
	then 
		exit
	fi
done
