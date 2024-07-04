*) In linux everything is under root directory (/)
*) We have no drives like windows
--------------------------------------------------------

Absolute vs Relative path:-

Absolute Path : Indicate full file path starts from root directory
Ex:
 /home/ec2-user/details/info/a.txt
 /home/ec2-user/details/info/b.txt

Relative path: Indicates file path starts from current directory
First we need to find out what is our current path using 'pwd'
pwd - present working directory

then start considering path from pwd location indicates ./ (or nothing)
ex:
 pwd: /home/ec2-user/

then relative path : ./details/info/a.txt
			(or)
		      details/info/a.txt
=========================================================
Install tree package (software)
sudo yum install tree -y

It gives graphical format of directories 
=========================================================
Practice:
---------
cd ~  : move to home directory of user
Ex: /home/<username>
    /home/ec2-user

cd /  : root directory

cd <SpecifyPath> : Move to given directory

cd .. : come back to previous directory

cd ../.. : come back to 2 previous directories 

ls /home/ec2-user/docs/

ls -l /home/ec2-user/docs/

tree .

tree /home/ec2-user/docs/


head students : display first 10 lines of a file
tail students : display las 10 lines of a file

================================================================
grep : it is used to search given word in file(s)
=> by default is case-sensitive 
=> we can use a flag -i to ignore case
=> we can use -n to ask word line number in a given file

grep 'ajay' students
grep 'Ajay' students
# ignore case
grep -i 'Ajay' students
# display line number
grep -n 'jay' students

grep -in 'Ajay' students
grep -ni 'Ajay' students
grep -i -n 'Ajay' students

---------------------------------
wc : word count
this command is used to count number of lines, words, characters in a given file
