echo "Put the number of packets you wish to send:"
read attempt
echo "Write the name of the host:"
read host

ping -c $attempt $host | grep time= | awk 'BEGIN {FS="[=]|[ ]"} {print $12}' > ping.txt

cat ping.txt | ./ping.awk
