#! /bin/bash -x

#First name starts with Cap and has minimum 3 characters

read -p "User Name : " word

pattern1='^[A-Z]{1}[a-zA-Z]{2,}$'

if [[ $word =~ $pattern1 ]]
then
        echo valid
else
        echo invalid
fi
