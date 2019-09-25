#!/bin/bash
FILES=./NYSE/NYSE_daily_prices_*.csv
for file in $FILES
do
	echo "Processing $file file..."
	ls -l $file
	mongoimport --type csv --db INFO7250 --collection nyse --headerline $file
done
