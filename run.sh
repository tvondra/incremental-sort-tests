#!/bin/sh

OUT=$1

mkdir $OUT

for scale in 100000 1000000 10000000; do

	sh incremental-sort.sh $OUT $scale >> $OUT/sort.csv
	sh incremental-sort-limit.sh $OUT $scale >> $OUT/sort-limit.csv

	sh incremental-sort-indexes.sh $OUT $scale >> $OUT/sort-indexes.csv
	sh incremental-sort-indexes-limit.sh $OUT $scale >> $OUT/sort-indexes-limit.csv

	sh incremental-sort-indexes-ios.sh $OUT $scale >> $OUT/sort-indexes-ios.csv
	sh incremental-sort-indexes-ios-limit.sh $OUT $scale >> $OUT/sort-indexes-ios-limit.csv

done
