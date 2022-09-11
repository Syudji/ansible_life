#!/bin/bash
# read-validate: проверка ввода

invalid_outpu () { 
	echo "Invalid output 'REPLY'" >&2
	exit 1
}
read -p "enter a singleitem >"

# Пустой ввод недопстимо
[[ -z $REPLY ]] && invalid_input

# ввод множества элементов (недопустимо)
(( $( echo $REPLY | wc -w ) > 1 )) && invalid_input

# введено допустимое имя файла?
if [[ $REPLY =~ ^[-[:alnum:]\._]+$ ]]; then
	echo "'$REPLY' is a valid filename"
	if [[ -e $REPLY ]]; then
		echo "And file '$REPLY' exist"
	else
		echo "However file '$REPLY' dosnt exist"
	fi

# введено вещественное число?
if [[ $REPLY =~ ^-?[[:digit:]]*\.[[:digit]]+$ ]]; then
	echo "'$RPLAY' is a floating pint number"

else
	echo "'$REPLY' is not an integer"
fi
else
	echo " The string '$REPLY' is not a valid filename."
fi


