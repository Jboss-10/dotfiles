#!/bin/fish

set delay (razer-cli --battery print | grep "idle delay" | awk '{print $3}')

while test $delay -ne 300
    set delay (razer-cli --battery print | grep "idle delay" | awk '{print $3}')
    sleep 2
end

set batterylevel (razer-cli --battery print | grep "charge:" | awk '{print $2}')
string join ', ' (date +%s) $batterylevel >>~/mousebat.csv
echo $batterylevel
