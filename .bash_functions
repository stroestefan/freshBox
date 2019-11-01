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