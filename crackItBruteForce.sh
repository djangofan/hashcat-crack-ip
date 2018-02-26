#!/bin/bash
# brew install hashcat
# example using https://passwordsgenerator.net/sha256-hash-generator/ :
# ip : 208.187.32.155
# hash: 3835E0DDAE5C86060874A43A035D3EAA86E976D89B664194F71A8362D243E935
rm outfile.txt 2> /dev/null

while read pattern; do
  printf "\nTrying brute force pattern ${pattern}\n"
  hashcat ./hashedIPs.txt --outfile-format=2 -o outfile.txt -m 1400 -a 3 "${pattern}"
done <brute-force-patterns.txt

if [ -f outfile.txt ]; then
	echo "Result:"
    cat outfile.txt
else 
	printf "\nNo decrypted ip address was found on this run.\n"
fi

echo "Done"
