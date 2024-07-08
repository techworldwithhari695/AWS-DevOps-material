USER PROMPT : 
[root@localhost ~]#
1. Login name    2. Machine name  3.present working directory                           4. User profile (# privileged mode (root user can execute any command)
[hari@localhost ~]$
# whoami –  who is the logged in
# who -> how many users are connected.
  
(-) -> file
-rwxr-xr-x  hari.txt--- this is file
(d)  directory
drwxrwxrwx  yamini  this is directory
lrwxr-x r--    hari  this is link file


#### TO SEE THE KERNEL VERSION ####
# uname -r
# uname  -a
#lscpu(cpu information like x86-64 or 32-bit or 64-bit)
#arch(architecture of the os)

### creation of folders and files#####
# mkdir <folder name>

#### many no.of folders #########
 #mkdir redhat
#mkdir  centos unix fedora 
#mkdir  day-{1..30}
#mkdir unit-{a..z}

### creation of folders and sub folders ###
#mkdir –p hari/yamini/linux/redhat

#### TO CREATE A DIRECTORY ####
# mkdir <dir_name>
# mkdir yamini
# ls (to check)
# cd yamini (to enter into dir)
# cd (to come out)
#### TO CREATE A MULTIPLE DIRECTORIES ####
# mkdir yamini1 yamini2 yamini3 yamini4
# ls (to check)
#### TO CREATE A PARENT DIRECTORY ####
# mkdir –p world/asia/india/ap/hyd/dsnr/hari
# ls –R world (to check)
##### cd (change directory) #####
#cd  <folder path>
# cd  /usr/share/


#### NAVIGATION OF DIRECTORIES ####
# cd world/asia/india/ap/hyd/dsnr/hari
# pwd (to check)
# cd .. (to come 1 step back)
# cd ../.. (to come 2 step back)
# cd ../../.. (to come 3 step back)
# cd – (to go at last working directory)
# cd (to go at user home directory)
# pwd (to check)

#####CREATING A FILE ### ######
	1.touch
	2.cat
	3.vi/vim

#### TO CREATE MULTIPLE FILES WITHOUT DATA ####
# touch unix solaris redhat
# ls (to check)

#### TO CREATE A FILE WITH DATA ####
# cat > (filename)
# cat > linux
This is linux
Press ctrl+D to save & quit the file
# cat linux (to read the file)
#### TO APPEND THE DATA WITHOUT OVERWRITING ####
# cat >> linux
Added data by root
Press ctrl+D to save & quit the file
# cat linux (read the file)

 
 

 


 
