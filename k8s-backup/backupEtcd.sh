#0 0 * * * sh /root/dev-app/egat-p2p/k8s-backup/backupEtcd.sh

BASE_FILE_NAME=/home/ptwop/etcd-backup/egat-etcd
BACKUP_PATH=/home/ptwop/etcd-backup

#. /home/eurekaadm/backup-icp/etcd.sh

CURRENT_TIME=$(date "+%Y.%m.%d-%H.%M.%S")
echo "Current Time : $CURRENT_TIME"

FILE_NAME="$BASE_FILE_NAME.$CURRENT_TIME.db"
echo "Back up to the following file: " "$FILE_NAME"

/usr/local/bin/etcdctl --endpoints 10.40.58.160:2379 --cert=/etc/kubernetes/pki/etcd/server.crt --key=/etc/kubernetes/pki/etcd/server.key --cacert=/etc/kubernetes/pki/etcd/ca.crt snapshot save $FILE_NAME

#sudo mkdir -p /tmp/backup/etcd
#sudo mv /tmp/etcd.$CURRENT_TIME.db /tmp/backup/etcd/etcd.$CURRENT_TIME.db

#find file that have been modified or create more than 7 day then delete it

#find $BACKUP_PATH -cmin +10 -type f -delete

find $BACKUP_PATH -mtime +7 -type f -delete
