if [ $# -gt 0 ]
then
        sudo deluser $1
    echo " "
    echo "$1 is no longer in the list of existing users"
    echo " "
    echo "New list of existing users"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~"
    cat /etc/passwd | grep home | gawk -F':' '{print $1}'
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~"
else
        echo "Error: Please run the script with the users name you want to remove..."
fi