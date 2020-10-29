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
    diff ~/.bashrc ~/misc/freshBox/.bashrc;
    diff ~/.bash_profile ~/misc/freshBox/.bash_profile;
    diff ~/.bash_logout ~/misc/freshBox/.bash_logout;
    diff ~/.bash_functions ~/misc/freshBox/.bash_functions;
    diff ~/.bash_aliases ~/misc/freshBox/.bash_aliases;
}
