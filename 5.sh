echo "OS VERSION"
lsb_release -a
echo "ALL AVAILBLE SHELLS" 
cat /etc/shells
echo "CPU INFORMATION"
lscpu
echo "MEMORY INFO"
free -m
echo "HARD DISK INFORMATION"
sudo hdparm -I /dev/sda
echo "FILE SYSTEM INFORMATION"
df -h
