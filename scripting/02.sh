echo "This script will delete an active user on the VM"
echo "================================================\n"
echo "\n"
echo "Current Active Users:"
echo "====================="
cat /etc/passwd | grep home | gawk -F':' '{print $1}'
echo "\n"
read -p "Enter the username to delete: "  username
if [ $username ]
then
        sudo deluser $username
else
        echo "Error: No username specified"
fi
echo "\n"
echo "Active Users:"
echo "============="
cat /etc/passwd | grep home | gawk -F':' '{print $1}'
echo "\n"