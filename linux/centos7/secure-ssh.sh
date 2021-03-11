#Secure-ssh.sh
#Author Tanner Weinacker
#Creates a new SSH user using $1 Parameter
#Adds a public key from the local repo or culred from the remote repo
# Removes roots ability to ssh in
echo "All your code goes here"
sudo useradd -m -d /home/$1 -s /bin/bash $1
echo "user added"
sudo mkdir /home/$1/.ssh
echo "directory added"
cd /sys265-git/linux/public-keys
echo "changed directory"
sudo cp id_rsa.pub /home/$1/.ssh/authorized_keys
echo "Copied key"
sudo chmod 700 /home/$1/.ssh
sudo chmod 600 /home/$1/.ssh/authorized_keys
echo "Changed file permissions"
sudo chown -R $1:$1 /home/$1/.ssh
echo "Finished"

