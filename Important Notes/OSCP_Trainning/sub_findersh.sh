# the first trainning for real prog with bash scripting :: 
#!bin/bash
if [ $# -eq 0 ]
then 
echo "u have to pass the link for the index web page "
echo " Error ********************* 0"
else
	wget $1
	cat index.html.1  | grep "href="  | grep ".com" | cut -d "/" -f 4 | cut -d '"' -f 1 >> hosts.txt
	for domain in $(cat hosts.txt)
	do
		if [[ $(ping -c 1 $domain) ]]
			then
				echo "the ping done ++++++++++++++++" 
				echo $domain >> valid_hosts
		else
			echo "eror --------------------"
		fi
	done
	for ip in $(cat valid_hosts)
	do
		ping -c 1 $ip | head -n 1 | cut -d "(" -f "2" | cut -d ")" -f 1 >> IPs_of_hosts
	done
fi 