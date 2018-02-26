#!/bin/bash
# brew install hashcat
# example using https://passwordsgenerator.net/sha256-hash-generator/ :
# ip : 208.187.32.155
# hash: 3835E0DDAE5C86060874A43A035D3EAA86E976D89B664194F71A8362D243E935
#hashcat ./hashedIPs.txt --potfile-path=pot.file -d 2 --outfile-format=2 -o outfile.txt -m 1400 -a 3 ?d?d?d.?d?d?d.?d?d.?d?d?d
hashcat -I

for word in $(cat patterns.txt); do echo $word; done

start=$(date +'%s')
rm outfile.txt 2> /dev/null
hashcat -O --outfile-format=2 -o outfile.txt -m 1400 -a 3 ./hashedIPs.txt ./patterns.hcmask

if [ -f outfile.txt ]; then
	echo "Result:"
    cat outfile.txt
else 
	printf "\nNo decrypted ip address was found on this run.\n"
fi

echo "Done"
echo "Script took $(($(date +'%s') - $start)) seconds"
