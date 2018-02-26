#!/bin/bash
# brew install hashcat
# example using https://passwordsgenerator.net/sha256-hash-generator/ :
# ip : 208.187.32.155
# hash: 3835E0DDAE5C86060874A43A035D3EAA86E976D89B664194F71A8362D243E935

start=$(date +'%s')
hashcat -I

rm outfile.txt 2> /dev/null
COUNTER=1

#while read pattern; do
#  printf "\nTrying brute force pattern ${COUNTER} : ${pattern}\n"
#  # add arg -D1 to run on CPU instead of GPU
#  if [ ! -f outfile.txt ]; then
#    hashcat ./hashedIPs.txt --potfile-path=pot.file --outfile-format=2 -o outfile.txt -m 1400 -a 3 $pattern
#  fi
#  COUNTER=$[$COUNTER +1]
#done <brute-force-patterns.txt

hashcat ./hashedIPs.txt --potfile-path=pot.file -d 2 --outfile-format=2 -o outfile.txt -m 1400 -a 3 ?d?d?d.?d?d?d.?d?d.?d?d?d

if [ -f outfile.txt ]; then
	echo "Result:"
    cat outfile.txt
else 
	printf "\nNo decrypted ip address was found on this run.\n"
fi

echo "Done"
echo "It took $(($(date +'%s') - $start)) seconds"
