#! /bin/bash -x

echo " 1) Check First Name Valid Or Not : "
echo " 2) Check Last Name Valid Or Not  : "
echo " 3) Check Email Valid Or Not      : "


read -p "Enter Choice   : " choice
read -p "Read From User : " word

case $choice in
	1)
#First name starts with Cap and has minimum 3 characters
	pattern='^[A-Z]{1}[a-zA-Z]{2,}$'
	;;
	2)
#Last name starts with Cap and has minimum 3 characters
	pattern='^[A-Z]{1}[a-zA-Z]{2,}$'
	;;
	3)
#Email Valid Or NOT	
	pattern='^[a-zA-Z0-9]+([.\-+]?[a-zA-Z0-9]+)*[@][a-z]{2,5}[.]?[a-z]{2,3}([.][a-z]{2})*$'
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
