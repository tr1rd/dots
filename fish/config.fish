if status is-interactive
    # Commands to run in interactive sessions can go here
end
function fish_greeting
    fortune | cowsay | lolcat	
    echo The time is (set_color yellow)(date +%T)(set_color normal), welcome :3
    echo (set_color blue)You are:
end
