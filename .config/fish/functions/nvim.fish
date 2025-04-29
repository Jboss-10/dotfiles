function nvim
    command nvim $argv
    printf '\e[5 q'
end
