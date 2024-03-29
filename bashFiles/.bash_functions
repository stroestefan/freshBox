#!/bin/bash

exe() # Make a file executable 
{
    chmod +x $1
}

helpaf() # Displays this help text
{
    echo "Available aliases:"; echo
    cat ~/.bash_aliases | while read line
    do
        if [[ $line == alias* ]];
        then
            echo $line
        fi
    done
    
    echo; echo "Available functions:"; echo
    local functionIdentifierAndComment="() #"
    cat ~/.bash_functions | while read line
    do
        if [[ $line =~ $functionIdentifierAndComment
	   && $line != *functionIdentifierAndComment* ]];
        then
            echo $line
        fi
    done
    echo;
}

car() # Compiles and runs a java class. Usage: car ClassName
{
    javac $1'.java' && java $@
}

we() # Weather report, no parameter defaults to braila
{
    printf '\033[8;40;130t';
    if [[ $# -eq 0 ]]; then
        curl wttr.in/braila
    else
        curl wttr.in/$1
    fi
}

compareBashFiles() # Compares the freshBox files with the local ones
{
    echo bashrc:
    diff ~/.bashrc ~/misc/freshBox/bashFiles/.bashrc;
    echo bash_profile:
    diff ~/.bash_profile ~/misc/freshBox/bashFiles/.bash_profile;
    echo bash_logout:
    diff ~/.bash_logout ~/misc/freshBox/bashFiles/.bash_logout;
    echo bash_functions:
    diff ~/.bash_functions ~/misc/freshBox/bashFiles/.bash_functions;
    echo bash_aliases:
    diff ~/.bash_aliases ~/misc/freshBox/bashFiles/.bash_aliases;
}

pomodoro() # Sets a timer and sends a notification after
{
    if [[ $# -eq 0 ]]; then
        echo "Usage: pomodoro [x + unit of time(s/m/h)] [message to get after the time]"
    else
        sleep "$1" && notify-send "${*:2}"
    fi
}

name() # Changes the terminal window name
{
    ORIG=$PS1
    TITLE="\e]2;$@\a"
    PS1=${ORIG}${TITLE}
}
