#!/bin/bash/

# pattern 1

exec < FILE
while read line
do
    cmd
done

# pattern 2

cat FILE_PATH | while read line
do
	cmd
done

# pattern 3
while read line
do
	cmd
done < FILE

# example
# content of ip.txt：
10.1.1.11 root 123
10.1.1.22 root 111
10.1.1.33 root 123456
10.1.1.44 root 54321

# example 1
cat ip.txt | while read ip user pass
do
    echo "$ip--$user--$pass"
done

# example 2
while read ip user pass
do
    echo "$ip--$user--$pass"
done < ip.txt

# result
10.1.1.11--root--123
10.1.1.22--root--111
10.1.1.33--root--123456
10.1.1.44--root--54321

# use IFS as the delimiter: space (default)

# example
# content of test.txt
chen:222:gogo
jie:333:hehe

#!/bin/bash
IFS=:
cat test.sh | while read a1 a2 a3
do
    echo "$a1--$a2--$a3"
done
