# my update script
function myupdate
    paru -Suy
    nvim --headless "+Lazy! sync" +qa | rg --color=never "log.*\s\|\s"
    nvim --headless "+Lazy! sync" +qa | rg --color=never "log.*\s\|\s"
    fisher update
    tldr --update
    cleanup
    echo updated
end
