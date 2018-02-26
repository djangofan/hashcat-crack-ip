#!/bin/bash
# brew install hashcat
# example using https://passwordsgenerator.net/sha256-hash-generator/ :
# ip : 208.187.32.155
# hash: 3835E0DDAE5C86060874A43A035D3EAA86E976D89B664194F71A8362D243E935

while read pattern; do
  echo "Trying pattern " + $pattern
  hashcat ./hashedIPs.txt --outfile-format=2 -o outfile.txt -m 1400 -a 3 $pattern

done <brute-force-patterns.txt

echo "Result:"
cat outfile.txt 

echo "Done"
