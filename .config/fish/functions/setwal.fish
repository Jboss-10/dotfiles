function setwal
    wal -i $argv --saturate 0.3
    pywalfox upadate
    ~/.scripts/setbspwmcolors.sh
end
