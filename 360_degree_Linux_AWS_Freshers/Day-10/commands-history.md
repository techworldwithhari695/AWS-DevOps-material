  1  cat /etc/redhat-release
    2  ip a
    3  vi /etc/sysconfig/network-scripts/ifcfg-enp0s3
    4  vi /etc/sysconfig/network-scripts/ifcfg-enp0s8
    5  vi /etc/sysconfig/network-scripts/ifcfg-enp0s9
    6  init 6
    7  ip a
    8  init 0
    9  pwd
   10  mkdir 360degree
   11  ls
   12  rm -rf 360degree/
   13  ls
   14  pwd
   15  mkdir 360degree
   16  ls
   17  ll
   18  cd 360degree/
   19  pwd
   20  mkdir class1 class2 class3
   21  ls
   22  cd class1
   23  pwd
   24  mkdir day-{1..30}
   25  ls
   26  pwd
   27  cd day-1
   28  ls
   29  pwd
   30  cd ..
   31  pwd
   32  cd day-1
   33  pwd
   34  cd ../..
   35  pwd
   36  cd class1
   37  cd day-1
   38  ls
   39  pwd
   40  cd ../../../
   41  pwd
   42  uname -r
   43  echo $SHELL
   44  pwd
   45  cd 360degree/
   46  ls
   47  cd class1/
   48  cd day-1
   49  pwd
   50  cd -
   51  cd
   52  pwd
   53  ip a
   54  exit
   55  pwd
   56  uid root
   57  id root
   58  cat /etc/passwd
   59  cat /etc/group
   60  groupadd linuxengineers
   61  groupadd -g 2020 devopsengineer
   62  groupadd cloudengineer
   63  cat /etc/group
   64  cat /etc/group | grep cloudengineer
   65  cat /etc/passwd
   66  cat /etc/shadow
   67  echo $SHELL
   68  cat /etc/passwd
   69  cat /etc/shells
   70  cat /etc/passwd
   71  useradd user1
   72  cat /etc/passwd |grep -i user1
   73  cd /home/
   74  ls
   75  cd ..
   76  cd
   77  useradd -u 1010 user2
   78  cat /etc/passwd |grep -i user2
   79  useradd -g linuxengineer user3
   80  cat /etc/group |grep -i linux
   81  useradd -g linuxengineers user3
   82  id user3
   83  useradd -G devopsengineer user4
   84  id user4
   85  useradd -g linuxengineers -G devopsengineer user5
   86  id user5
   87  useradd -s /sbin/nologin user6
   88  cat /etc/passwd |grep -i user6
   89  cat /etc/passwd |grep -i user5
   90  cat /etc/passwd |grep -i user4
   91  useradd -c "FTP user" -s /sbin/nologin user7
   92  passwd user7
   93  passwd user3
   94  cat /etc/passwd
   95  cat /etc/shadow
   96  chage -l hari
   97  chage -m 3 -M 60 -W 5 -I 5 hari
   98  chage -l hari
   99  passwd username
  100  cat /etc/passwd
  101  userdel user3
  102  userdel -rf user3
  103  cd /home/
  104  ls
  105  cd
  106  userdel user5
  107  cd /home/
  108  ls
  109  cd
  110  cat /etc/passwd | grep -i user7
  111  usermod -s /bin/bash user7
  112  cat /etc/passwd | grep -i user7
  113  init 0
  114  ls
  115  ll
  116  mkdir class1
  117  ll
  118  ls
  119  ll
  120  mkdir -p /root/class1/class2
  121  cd class1/
  122  ll
  123  cd
  124  chmod 777 class1
  125  ll
  126  cd class1/
  127  ls
  128  ll
  129  cd
  130  chmod -R 775 class1
  131  ll
  132  cd class1/
  133  ll
  134  cd
  135  ls
  136  ll
  137  chown hari:root class1
  138  ls
  139  ll
  140  chgrp .hari class1
  141  chgrp :hari class1
  142  chgrp : hari class1
  143  chgrp hari:hari class1
  144  ls
  145  ll
  146  chgrp hari class1
  147  ll
  148  chown .hari class1
  149  chown .root class1
  150  ll
  151  chmod
  152  chown
  153  chgrp
  154  lsblk
  155  init 0
  156  lsblk
  157  df -hT
  158  cat /etc/fstab
  159  init 0
  160  df -hT
  161  lsblk
  162  fdisk -l /dev/sdb
  163  fdisk -l /dev/sda
  164  fdisk /dev/sdb
  165  fdisk -l /dev/sdb
  166  lsblk
  167  fdisk /dev/sdb
  168  lsblk
  169  mkdir /applogs
  170  mkdir /dbalogs
  171  mount /dev/sdb1 /applogs
  172  mkfs.ext4 /dev/sdb1
  173  mount /dev/sdb1 /applogs
  174  df -hT
  175  mkfs.ext4 /dev/sdb2
  176  mount /dev/sdb2 /dbalogs
  177  df -hT
  178  init
  179  init 6
  180  df -hT
  181  vi /etc/fstab
  182  df -hT
  183  init 6
  184  df -hT
  185  init 6
  186  df -hT
  187  cat /etc/fstab
  188  history
[root@localhost ~]#
