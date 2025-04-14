#!/bin/fish
set numdates (checkupdates | wc -l)
set out UPD $numdates
echo $out
