#0 0 * * * sh /root/dev-app/egat-p2p/k8s-backup/backupEtcd.sh

BASE_FILE_NAME=/home/ptwop/etcd-backup/egat-etcd
BACKUP_PATH=/home/ptwop/etcd-backup

#. /home/eurekaadm/backup-icp/etcd.sh

CURRENT_TIME=$(date "+%Y.%m.%d-%H.%M.%S")
echo "Current Time : $CURRENT_TIME"

FILE_NAME="$BASE_FILE_NAME.$CURRENT_TIME.db"
 echo "Back up to the following file: " "$FILE_NAME"

etcdctl --endpoints 10.40.58.160:2379 --cert=/etc/kubernetes/pki/etcd/server.crt --key=/etc/kubernetes/pki/etcd/server.key --cacert=/etc/kubernetes/pki/etcd/ca.crt snapshot save $FILE_NAME

#sudo mkdir -p /tmp/backup/etcd
#sudo mv /tmp/etcd.$CURRENT_TIME.db /tmp/backup/etcd/etcd.$CURRENT_TIME.db

#TODO delete file older than 7 days 
#write echo what file was deleted

find $BACKUP_PATH -mtime +7 #-type f -delete

echo "script finish at: $CURRENT_TIME"
