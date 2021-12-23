BACKUP_PATH=/home/ptwop/etcd-backup


FILE_NAME=$(find $BACKUP_PATH -type f -exec stat -c '%Y %n' {} \; | sort -nr | awk 'NR==1 {print $2}')
LATEST_FILE_NAME=$(echo "$FILE_NAME" | awk -F/ '{print $5}')

echo $LATEST_FILE_NAME

#etcdctl --endpoints 10.40.58.160:2379 snapshot restore snapshotdb