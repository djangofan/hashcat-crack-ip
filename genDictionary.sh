#!/bin/bash
#for a in `seq 0 255`
#do
#  for b in `seq 0 255`
#  do
#  echo "$a.$b." >> ips_left.txt
#  echo "$a.$b" >> ips_right.txt
#  done
#done

for a in `seq 0 2`
do
 for b in `seq 0 9`
  do
  for c in `seq 0 9`
    do
   for d in `seq 0 2`
   do
    for e in `seq 0 9`
     do
     for f in `seq 0 9`
       do
      echo "$a$b$c.$d$e$f." >> ips_left.dict
        echo "$a$b$c.$d$e$f" >> ips_right.dict
     done
    done
   done
  done
  done
done