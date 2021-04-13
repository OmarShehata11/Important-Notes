the first command :
grip ==> used to search for a spacific words or letters in a file and print it out .
https://linuxtechlab.com/bash-scripting-learn-use-regex-basics/




the second :
sed (stream editor) ==> used for edit a file without open the file .

example -->  sed ' s/ (the words you want to change from the file) / (the words you will put it instead of the last words) /' (the file name)

note ::
in the last case , the output just only will be different , but the actual text in the file won't be change .




the third :
split ==> used for spliting the contant of a file , into many files ; depending of the number of lines you choose , or actualy any thing u want 

an exmaple --> for i in {1..100}; do echo $i >> file.txt ;done 
this will create a file called file.txt , and then will put into it numbers for 1 to 100 , and every number in a single line ..

then -> split -l 50 file.txt new_

and this will split every 50 lines and put it in the new_ file .


cut ..
awk ..


```bash

sudo tail -f var/log/apache2/acces.log

```
this will make you monitor the file and any log will the target do in the server



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

<p> search also for socat </p>


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


## to add user to group 
```bash
usermod -a -G <the group name> <the user>
```


## to see the processes which are running , like open the control panel in windows 
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