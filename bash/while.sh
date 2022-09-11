#!/bin/bash
# while-count: вывод последовательности чисел

TRIG=1
while [ $TRIG -le 5 ]; do
	echo $TRIG
	TRIG=$((TRIG + 1))
done
echo "FINISHED!!!!!"
