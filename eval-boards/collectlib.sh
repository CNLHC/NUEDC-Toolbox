#!/bin/sh


if ! [ -d ./commonlib ]; then
	mkdir ./commonlib
fi

for  i in $(find . -name "*.lib"); do
	rsync -P $i ./commonlib/
done


