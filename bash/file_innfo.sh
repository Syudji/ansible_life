#!/bin/bash
# read-ifs: чтение полей из файла
file_info () {
# file_info: функция для вывода информации о файле
if [[ -e $1 ]]; then
echo -e "\nFile Type:"
file $1
echo -e "\nFile Status:"
stat $1
else
echo "$FUNCNAME: usage: $FUNCNAME file" >&2
return 1
fi
}


read -p "Enter a username > " user_name
#file_info=$(grep "^$user_name:" $FILE)
if [ -n "file_info" ]; then
IFS=":" read user pw uid gid name home shell <<< file_info 
echo "User = '$user'"
echo "UID = '$uid'"
echo "GID = '$gid'"
echo "Full Name = '$name'"
echo "Home Dir. = '$home'"
echo "Shell = '$shell'"
else
echo "No such user '$user_name'" >&2
exit 1
fi
