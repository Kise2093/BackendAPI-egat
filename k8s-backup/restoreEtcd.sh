BACKUP_PATH=/home/ptwop/etcd-backup


FILE_NAME=$(find $BACKUP_PATH -type f -exec stat -c '%Y %n' {} \; | sort -nr | awk 'NR==1 {print $2}')
LATEST_FILE_NAME=$(echo "$FILE_NAME" | awk -F/ '{print $5}')

#cho $LATEST_FILE_NAME

while true; do
    read -p "Do you wish to restore etcd cluster using $LATEST_FILE_NAME ? [Y/n]" yn
    case $yn in
        [Yy]* ) etcdctl --endpoints 10.40.58.160:2379 snapshot $FILE_NAME ; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done



#etcdctl --endpoints 10.40.58.160:2379 snapshot $FILE_NAME 

echo "Restoring an etcd cluster using $LATEST_FILE_NAME snapshot at path $FILE_NAME"