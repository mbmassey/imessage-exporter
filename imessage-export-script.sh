#!/bin/bash
d_end=2023-09-29
while [[ "$d_end" > 2018-09-18 ]]
do
echo $d_end
d_start=$(date -j -v -7d -f "%Y-%m-%d" $d_end +%Y-%m-%d)

d_year=$(date -j -f "%Y-%m-%d" $d_start +%Y)
d_month=$(date -j -f "%Y-%m-%d" $d_start +%m)
echo $d_year
echo $d_month
imessage-exporter -f html -o ~/imessage-export/$d_year/$d_month/$d_start -c compatible -s $d_start -e $d_end

d_end=$d_start

done
