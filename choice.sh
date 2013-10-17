#! /bin/sh
# Shell which prints a different message based a user choice

msg1="You selected choice A!"
msg2="You selected choice B!"
msg3="You selected choice C!"

echo "Please make a choice: a b or c"; read -p "> " choice

if [ "$choice" = "a" ]; then
	echo "$msg1"
elif [ "$choice" = "b" ]; then
	echo "$msg2"
elif [ "$choice" = "c" ]; then
	echo "$msg3"
else
	echo "invalid choice!"
fi
