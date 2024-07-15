Day 9:

+++++++++++++++++++++++
file / dir permissions
+++++++++++++++++++++++

which command is to see the files and dir in the linux ?

ls - list of files/dir

do you see the pemissions ? 
ls -lrt or ll (long list)
what is the permissions?

[root@localhost ~]# touch hari.txt

-     rwx       rwx        rwx         hari.txt
 4+2+1 = 7     4+2+1 = 7   4+2+1 = 7     777 (full permissions)
      Owner     group      others

-     r-x     rw-          r--         newfile.txt
    4+0+1=5   4+2+0=6      4+0+0=4       564
d
l

root is the owner of the file

LinuxEngineers is the group of the file  ( sattireddy, sowmya, vamsi , rakesh)

others : DevopsEngineers

- : zero - 0
r - read - 4
w - write - 2
x - execute - 1


Umask value: user mask value for root user and normal user

root : 022      normal user : 002


dir
777
022
----
755
----

d  rwx     r-x      r-x   . 2 root root 6 Jul 10 11:35 hari
    u       g        o
   4+2+1=7  4+0+1=5  4+0+1=5                            755


d   rwx   r-x     r-x. 2 root root 6 Jul 15 10:58 class1
    4+2+1=7 4+0+1=5 4+0+1=5                         755

777
002
----
775
---

[hari@localhost ~]$
d    rwx     rwx       r-x   . 2 hari hari 6 Jul 15 11:00 class2

     4+2+1=7  4+2+1=7  4+0+1=5   owner  group                           775


linuxengineers group (rakesh, sowmya, vamsi)
owner(user)  hari

others - user5 , user2, user4 , user7 



chmod 777 file/dir

chmod -R 777 dir/files, dir/file2 , dir/class1/class2/clas3/files


chgrp # to change the group of the file/dir
chown # to change the ownership of the file/dir



++++++++++++++++
Disk partitions
+++++++++++++++

packagement
tomcat(webserver) --> .war or .jar  
apache(webserver) --> .html installtions --> will deploy the application

+++++++++++
cloud 
10days
+++++++++++






-rw-r--r--. 1 root root 0 Jul 10 11:35 hari.txt






Linux Engineer /Linux administrator

Operations engineers (linux engineer)

--> deploy the code to production server
--> Build/Provision the servers
--> user creation /reset the password
--> monitor the servers
--> monitor the applications
--> adding/creating the volumes(extending/reducing)

