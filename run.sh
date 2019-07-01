#/bin/bash

rm -rf iso639-1-files

cat iso639-1-alpha-2.txt | while read line
do
	cp -r base_file $line
	cd $line
	mv base.csv $line
	cd ..
done

mkdir -p iso639-1-files
ls | grep -e "^..$" | xargs -I% mv % iso639-1-files
