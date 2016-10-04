#!/bin/bash

function_1()
{
    echo -n "Your username is: "
    who
}

function_2()
{
    echo -n "The curret directory is: "
    pwd
}

select selection in "Find your username" "Find our your current directory" "Quit"
    do
        case $selection in
            "Find your username")
                function_1
                ;;
            "Find our your current directory")
                function_2
                ;;
            "Quit")
                echo "You have chosen to terminate the select statement"
                break
                ;;
            *)
                echo "Not a good selection, try again"
                ;;
        esac
    done
    