Fixing zookeeper problem 
zookeeper going 0/1 after it working for so long 
1. k -n druid get pvc 
  - copy the pvc id for the 3 zookeeper
2. k -n druid get po -o wide
  - locate where each zookeeper is in
3. ssh root@thatServer
df -h | grep thatPVCname
4. copy the path
cd toThatPath
5. delete the myid file
6. delete the zookeeper pod

THEN delete the kafka-0 - 1