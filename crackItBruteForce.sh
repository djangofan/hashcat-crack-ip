#!/bin/bash
# brew install hashcat
# example using https://passwordsgenerator.net/sha256-hash-generator/ :
# ip : 208.187.32.155
# hash: 3835E0DDAE5C86060874A43A035D3EAA86E976D89B664194F71A8362D243E935

hashcat --outfile-format=2 -o outfile.txt ./hashedIPs.txt -m 1400 -a 3 ?d.?d.?d.?d

echo "Done"
