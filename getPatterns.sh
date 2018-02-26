#!/bin/bash
END=3
>brute-force-patterns.txt

# generate the 81 possible combinations of hashcat brute force pattern for IP address
oneDigit="?d"
twoDigit="?d?d"
treDigit="?d?d?d"

for i in $(seq 1 $END); do
	for j in $(seq 1 $END); do
		for r in $(seq 1 $END); do
			for s in $(seq 1 $END); do

				echo $i $j $r $s
				if [ "$i" -eq "1" ]; then
                    address="${oneDigit}"
                elif [ "$i" -eq "2" ]; then
                	address="${twoDigit}"
                elif [ "$i" -eq "3" ]; then
                	address="${treDigit}"
				fi
				if [ "$j" -eq "1" ]; then
                    address="${address}.${oneDigit}"
                elif [ "$j" -eq "2" ]; then
                	address="${address}.${twoDigit}"
                elif [ "$j" -eq "3" ]; then
                	address="${address}.${treDigit}"
				fi
				if [ "$r" -eq "1" ]; then
                    address="${address}.${oneDigit}"
                elif [ "$r" -eq "2" ]; then
                	address="${address}.${twoDigit}"
                elif [ "$r" -eq "3" ]; then
                	address="${address}.${treDigit}"
				fi
				if [ "$s" -eq "1" ]; then
                    address="${address}.${oneDigit}"
                elif [ "$s" -eq "2" ]; then
                	address="${address}.${twoDigit}"
                elif [ "$s" -eq "3" ]; then
                	address="${address}.${treDigit}"
				fi
				echo $address >>brute-force-patterns.txt
            done
        done
    done
done

echo "Done"
