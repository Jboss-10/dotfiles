function timer -a delay message
    sleep (math $delay * 60000)
    notify-send $message -t 10000
end
