#!/bin/bash

PS3="----> "
openconnectPATH="/usr/sbin/openconnect"

if [ ! -e $openconnectPATH ]; then
    echo "Missing Dependencies..."
    read -rp "Do you want to install dependencies ? [y/n] : " dependencie_ANS 
    if [ $dependencie_ANS == "y" ]; then
        sudo apt install openconnect
    elif [ $dependencie_ANS == "n" ]; then
        echo "Exiting..."
        exit 1
    else 
        echo "Wrong input"
        exit 1
    fi
fi
    
echo "Please Enter the Number of Country you want to connect"

select CHOICE in England Germany Holland USA France
do
    case $REPLY in 

    1)
        echo "Connecting to England"
        sudo openconnect cm1.kmak.cc:443
        ;;
    2)
        echo "Connecting to Germany"
        sudo openconnect cm2.kmak.cc:443
        ;;
    3)
        echo "Connecting to Holland"
        sudo openconnect cm3.kmak.cc:443
        ;;
    4)
        echo "Connecting to USA"
        sudo openconnect cm4.kmak.cc:443
        ;;
    5)
        echo "Connecting to France"
        sudo openconnect cm5.kmak.cc:443
        ;;
    *)
        echo -e "Wrong Input"
    esac
done