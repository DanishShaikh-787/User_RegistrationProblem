#! /bin/bash -x

echo " 1) Check First Name Valid Or Not : "
echo " 2) Check Last Name Valid Or Not : "

read -p "Enter Choice : " choice
read -p "User Name : " word

case $choice in
	1)
#First name starts with Cap and has minimum 3 characters
	pattern='^[A-Z]{1}[a-zA-Z]{2,}$'
	;;
	2)
#Last name starts with Cap and has minimum 3 characters
	pattern='^[A-Z]{1}[a-zA-Z]{2,}$'
	;;
	*)
	echo "Check Valid Choice"
	;;
esac
if [[ $word =~ $pattern ]]
then
	echo valid
else
	echo invalid
fi
