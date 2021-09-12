#!/bin/bash
IFS=
banner=`cat /dev/stdin | figlet -w 999`
columns=`tput cols`
spacer=`cat /dev/zero | head -c $columns | tr '\0' ' '`
banner_with_spacer=`echo $banner | sed "s/^/$spacer/"`
banner_length=`echo $banner_with_spacer | awk '{print length}' | head -n 1`
start_index=1
while true
do
    clear
    end_index=`echo "($columns - 1) + $start_index" | bc`
    echo $banner_with_spacer | cut -c $start_index-$end_index
    start_index=`echo "$start_index + 1" | bc`  
    if [ $start_index -eq $banner_length ]; then
        start_index=1
    fi
    sleep 0.05 
done
