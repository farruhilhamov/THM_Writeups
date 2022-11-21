#!/bin/bash

echo "Hello World"

whoami

id

set -x #debug starts here
name="Jammy"
age=21
echo "$name is $age years old"


set +x #debug ends here
#parameters is something like a $1 $2 etc..

echo "first parameter is: $0"
echo "second parameter is:$1"

echo "Enter your name: "
read name

echo "your name is $name!"

# Arrays

transport=('car' 'train' 'bike' 'bus')
echo "Enter num of transport 0-3"
read num


echo "${transport[num]}"
unset transport[1] #removes second element from transport
transport[1]='trainride' #places trainride to the second place

# conditionals

filename = $1

if [ -f "$filename" ] &&  [-w "$filename"]
then
	echo "hello" > $filename
else
	touch "$filename"
	echo "hello" > $filename
fi


# -eq - equal?
# -ne - not equal?
# -gt greater?
# -lt left value less than right value?
# -ge left value greater than right?
# -f does file exists?
# -w does file writable?
# -r does file readable?
# -d does it a directory
