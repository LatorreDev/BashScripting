echo "************************************"
echo "Script to resize /tmp folder to 12GB"
echo "************************************"

sudo mount -o remount,size=12G /tmp

echo "Folder size increased"
