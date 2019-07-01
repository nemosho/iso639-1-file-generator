#/bin/bash

cat iso639-1-alpha-2.txt | while read line
do
	cp -r base_file $line
	cd $line
	mv base.csv $line
	cd ..
done
