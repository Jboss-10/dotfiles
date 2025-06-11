function timer -a delay message
    sleep (math $delay x 60)
    notify-send $message -t 10000
end
