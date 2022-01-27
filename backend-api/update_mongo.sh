export MONGODB_ROOT_PASSWORD=Passw0rdEGAT
export MONGODB_REPLICA_SET_KEY=Passw0rdEGAT

helm upgrade --install -n erc-p2p masterdata-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD --set architecture=replicaset --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31111 --set externalAccess.service.nodePorts[1]=31112

helm upgrade --install -n erc-p2p otp-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD --set architecture=replicaset --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31113 --set externalAccess.service.nodePorts[1]=31114

helm upgrade --install -n erc-p2p session-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD --set architecture=replicaset --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31115 --set externalAccess.service.nodePorts[1]=31116

helm upgrade --install -n erc-p2p userprofile-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD --set architecture=replicaset --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31117 --set externalAccess.service.nodePorts[1]=31118

helm upgrade --install -n erc-p2p reference-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD --set architecture=replicaset --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31119 --set externalAccess.service.nodePorts[1]=31120

helm upgrade --install -n erc-p2p pool-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD --set architecture=replicaset --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31121 --set externalAccess.service.nodePorts[1]=31122

helm upgrade --install -n erc-p2p bilateral-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD --set architecture=replicaset --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31123 --set externalAccess.service.nodePorts[1]=31124

helm upgrade --install -n erc-p2p trade-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD --set architecture=replicaset --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31125 --set externalAccess.service.nodePorts[1]=31126

helm upgrade --install -n erc-p2p job-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD --set architecture=replicaset --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31127 --set externalAccess.service.nodePorts[1]=31128

helm upgrade --install -n erc-p2p energyforecast-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD --set architecture=replicaset --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31129 --set externalAccess.service.nodePorts[1]=31130

helm upgrade --install -n erc-p2p energyactual-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD --set architecture=replicaset --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31131 --set externalAccess.service.nodePorts[1]=31132

helm upgrade --install -n erc-p2p notification-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD --set architecture=replicaset --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31133 --set externalAccess.service.nodePorts[1]=31134

helm upgrade --install -n erc-p2p news-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD --set architecture=replicaset --set externalAccess.enabled=true --set externalAccess.service.type=NodePort --set externalAccess.service.nodePorts[0]=31135 --set externalAccess.service.nodePorts[1]=31136