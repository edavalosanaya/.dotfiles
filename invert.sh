#! /bin/bash

# Credit for this script goes to this StackOverflow post
# https://askubuntu.com/a/347702

if [ "$(pidof compton)" ];
    then
            pkill compton
    else

        ID=$(xdotool getactivewindow)
        CLASS=$(xprop -id "$ID"  | grep "WM_CLASS" | awk '{print $4}')
        #COND="class_g=${CLASS}"
    	COND="client=${ID}"
        compton --invert-color-include "$COND" &
fi
exit
