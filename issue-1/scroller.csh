#!/bin/tcsh
IFS=:
set tempfile=`mktemp`
cat /dev/stdin | figlet -w 999 > $tempfile
set columns=`tput cols`
set spacer_cmd="cat /dev/zero | head -c $columns | tr '\0' ' '"
sed -i.bak "s/^/`$spacer_cmd`/" $tempfile
set banner_length=`cat $tempfile | awk '{print length}' | head -n 1`
set start_index=1
while (1)
    clear
    @ end_index=($columns - 1) + $start_index
    cat $tempfile | cut -c $start_index-$end_index
    @ start_index=$start_index + 1
    if ($start_index == $banner_length) then
        set start_index=1
    endif
    sleep 0.05 
end
