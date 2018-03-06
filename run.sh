#!/bin/sh

OUT=$1

mkdir $OUT

sh incremental-sort.sh $OUT > $OUT/sort.csv
sh incremental-sort-limit.sh > $OUT/sort-limit.csv

sh incremental-sort-indexes.sh > $OUT/sort-indexes.csv
sh incremental-sort-indexes-limit.sh > $OUT/sort-indexes-limit.csv

sh incremental-sort-indexes-ios.sh > $OUT/sort-indexes-ios.csv
sh incremental-sort-indexes-ios-limit.sh > $OUT/sort-indexes-ios-limit.csv
