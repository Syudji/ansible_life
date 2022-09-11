#!/bin/bash
# while-read: чтение строк из файла

sort -k 1,1 -k 2n distro.txt | while read distro version release; do
	printf "Distro: %s\tVersion: %s\tReleased: %s\n" \
		$distro \
	        $version \
		$release
done

