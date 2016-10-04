#!/bin/bash

validPassword="secret"

echo "Please enter a password"
read userPassword

if [ $userPassword == $validPassword ]
	then
	echo "You have access"
else
	echo "You don't have access ha ha!"
fi