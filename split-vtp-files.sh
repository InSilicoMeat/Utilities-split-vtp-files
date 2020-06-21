#!/bin/bash
mkdir -p $2
cd $1
for i in `ls *.pvtp`
do
    cp $i $2/$i.txt;
done
for i in `ls *.vtp`
do
    awk '{print; if ($1 == "<AppendedData") exit;}' $i > $2/$i.txt;
    awk 'BEGIN{data = 0;}{if (data == 1) print; if ((data != 1) && ($1 == "<AppendedData")) {data = 1;}}' $i > $2/$i.data.bytes;
done
