export MONGODB_ROOT_PASSWORD=Passw0rdEGAT

helm upgrade --install -n erc-p2p test-masterdata-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD --set resources.limits='memory: \"384Mi\"' --set resources.requests='memory: \"64Mi\"' --set arbiter.resources.limits='memory: \"320Mi\"' --set arbiter.resources.requests='memory: \"64Mi\"'


helm upgrade --install -n erc-p2p masterdata-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD --set resource.limits=

helm upgrade --install -n erc-p2p otp-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD

helm upgrade --install -n erc-p2p session-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD

helm upgrade --install -n erc-p2p userprofile-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD

helm upgrade --install -n erc-p2p reference-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD

helm upgrade --install -n erc-p2p pool-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD

helm upgrade --install -n erc-p2p bilateral-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD

helm upgrade --install -n erc-p2p trade-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD

helm upgrade --install -n erc-p2p job-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD

helm upgrade --install -n erc-p2p energyforecast-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD

helm upgrade --install -n erc-p2p energyactual-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD

helm upgrade --install -n erc-p2p notification-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD

helm upgrade --install -n erc-p2p news-mongodb bitnami/mongodb --set nodeSelector='tier: db' --set arbiter.nodeSelector='tier: db' --set auth.rootPassword=$MONGODB_ROOT_PASSWORD