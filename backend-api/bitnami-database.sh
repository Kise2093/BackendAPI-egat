helm upgrade --install -n erc-p2p masterdata-mongodb bitnami/mongodb --set architecture=replicaset --set auth.rootPassword=Passw0rdEGAT --set auth.usernames[0]=user --set auth.passwords[0]=Passw0rdEGAT --set auth.databases[0]=MasterDataDatabase --set persistence.size=2Gi --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31111 --set externalAccess.service.nodePorts[1]=31112 --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.replicaSetKey=$MONGODB_REPLICA_SET_KEY --replicaCount=2 --version 10.30.0  --set service.port=27018

helm upgrade --install -n erc-p2p otp-mongodb bitnami/mongodb --set architecture=replicaset --set auth.rootPassword=Passw0rdEGAT --set auth.usernames[0]=user --set auth.passwords[0]=Passw0rdEGAT --set auth.databases[0]=OtpDataDatabase --set persistence.size=2Gi --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31113 --set externalAccess.service.nodePorts[1]=31114 --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.replicaSetKey=$MONGODB_REPLICA_SET_KEY

helm upgrade --install -n erc-p2p session-mongodb bitnami/mongodb --set architecture=replicaset --set auth.rootPassword=Passw0rdEGAT --set auth.usernames[0]=user --set auth.passwords[0]=Passw0rdEGAT --set auth.databases[0]=SessionDatabase --set persistence.size=2Gi --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31115 --set externalAccess.service.nodePorts[1]=31116 --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.replicaSetKey=$MONGODB_REPLICA_SET_KEY

helm upgrade --install -n erc-p2p userprofile-mongodb bitnami/mongodb --set architecture=replicaset --set auth.rootPassword=Passw0rdEGAT --set auth.usernames[0]=user --set auth.passwords[0]=Passw0rdEGAT --set auth.databases[0]=UserDatabase --set persistence.size=2Gi --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31117 --set externalAccess.service.nodePorts[1]=31118 --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.replicaSetKey=$MONGODB_REPLICA_SET_KEY

helm upgrade --install -n erc-p2p reference-mongodb bitnami/mongodb --set architecture=replicaset --set auth.rootPassword=Passw0rdEGAT --set auth.usernames[0]=user --set auth.passwords[0]=Passw0rdEGAT --set auth.databases[0]=ReferenceDatabase --set persistence.size=2Gi --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31119 --set externalAccess.service.nodePorts[1]=31120 --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.replicaSetKey=$MONGODB_REPLICA_SET_KEY

helm upgrade --install -n erc-p2p pool-mongodb bitnami/mongodb --set architecture=replicaset --set auth.rootPassword=Passw0rdEGAT --set auth.usernames[0]=user --set auth.passwords[0]=Passw0rdEGAT --set auth.databases[0]=PoolDatabase --set persistence.size=2Gi --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31121 --set externalAccess.service.nodePorts[1]=31122 --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.replicaSetKey=$MONGODB_REPLICA_SET_KEY

helm upgrade --install -n erc-p2p bilateral-mongodb bitnami/mongodb --set architecture=replicaset --set auth.rootPassword=Passw0rdEGAT --set auth.usernames[0]=user --set auth.passwords[0]=Passw0rdEGAT --set auth.databases[0]=BilateralDatabase --set persistence.size=2Gi --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31123 --set externalAccess.service.nodePorts[1]=31124 --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.replicaSetKey=$MONGODB_REPLICA_SET_KEY

helm upgrade --install -n erc-p2p trade-mongodb bitnami/mongodb --set architecture=replicaset --set auth.rootPassword=Passw0rdEGAT --set auth.usernames[0]=user --set auth.passwords[0]=Passw0rdEGAT --set auth.databases[0]=TradeDatabase --set persistence.size=2Gi --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31125 --set externalAccess.service.nodePorts[1]=31126 --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.replicaSetKey=$MONGODB_REPLICA_SET_KEY

helm upgrade --install -n erc-p2p job-mongodb bitnami/mongodb --set architecture=replicaset --set auth.rootPassword=Passw0rdEGAT --set auth.usernames[0]=user --set auth.passwords[0]=Passw0rdEGAT --set auth.databases[0]=JobDatabase --set persistence.size=2Gi --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31127 --set externalAccess.service.nodePorts[1]=31128 --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.replicaSetKey=$MONGODB_REPLICA_SET_KEY

helm upgrade --install -n erc-p2p energyforecast-mongodb bitnami/mongodb --set architecture=replicaset --set auth.rootPassword=Passw0rdEGAT --set auth.usernames[0]=user --set auth.passwords[0]=Passw0rdEGAT --set auth.databases[0]=EnergyForecastDatabase --set persistence.size=8Gi --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31129 --set externalAccess.service.nodePorts[1]=31130 --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.replicaSetKey=$MONGODB_REPLICA_SET_KEY

helm upgrade --install -n erc-p2p energyactual-mongodb bitnami/mongodb --set architecture=replicaset --set auth.rootPassword=Passw0rdEGAT --set auth.usernames[0]=user --set auth.passwords[0]=Passw0rdEGAT --set auth.databases[0]=EnergyActualDatabase --set persistence.size=8Gi --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31131 --set externalAccess.service.nodePorts[1]=31132 --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.replicaSetKey=$MONGODB_REPLICA_SET_KEY

helm upgrade --install -n erc-p2p notification-mongodb bitnami/mongodb --set architecture=replicaset --set auth.rootPassword=Passw0rdEGAT --set auth.usernames[0]=user --set auth.passwords[0]=Passw0rdEGAT --set auth.databases[0]=NotificationDatabase --set persistence.size=2Gi --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31133 --set externalAccess.service.nodePorts[1]=31134 --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.replicaSetKey=$MONGODB_REPLICA_SET_KEY

helm upgrade --install -n erc-p2p notification-mongodb bitnami/mongodb \
--set architecture=replicaset --set auth.rootPassword=Passw0rdEGAT \
--set auth.usernames[0]=user --set auth.passwords[0]=Passw0rdEGAT \
--set auth.databases[0]=NotificationDatabase --set persistence.size=2Gi \
--set externalAccess.enabled=true --set externalAccess.service.type=NodePort \
--set externalAccess.service.nodePorts[0]=31133 --set externalAccess.service.nodePorts[1]=31134 \
--set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.replicaSetKey=$MONGODB_REPLICA_SET_KEY


helm upgrade --install -n erc-p2p news-mongodb bitnami/mongodb \
--set architecture=replicaset --set auth.rootPassword=Passw0rdEGAT \
--set auth.usernames[0]=user --set auth.passwords[0]=Passw0rdEGAT \
--set auth.databases[0]=NewsDatabase --set persistence.size=2Gi \
--set externalAccess.enabled=true --set externalAccess.service.type=NodePort \
--set externalAccess.service.nodePorts[0]=31135 --set externalAccess.service.nodePorts[1]=31136 \
--set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --version 10.31.4
