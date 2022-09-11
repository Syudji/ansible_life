#!/bin/bash
dir_name="$1"
if [[ -d $dir_name ]]; then
if cd $dir_name; then
echo rm * # ТЕСТИРОВАНИЕ
else
echo "cannot cd to '$dir_name'" >&2
exit 1
fi
else
echo "no such directory: '$dir_name'" >&2
exit 1
fi
exit
