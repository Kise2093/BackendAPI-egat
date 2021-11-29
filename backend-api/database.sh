helm upgrade --install -n erc-p2p masterdata-mongodb stable/mongodb --set replicaSet.enabled=true --set mongodbRootPassword=Passw0rdEGAT --set mongodbUsername=user --set mongodbPassword=Passw0rdEGAT --set mongodbDatabase=MasterDataDatabase --set persistence.size=2Gi

helm upgrade --install -n erc-p2p otp-mongodb stable/mongodb --set replicaSet.enabled=true --set mongodbRootPassword=Passw0rdEGAT --set mongodbUsername=user --set mongodbPassword=Passw0rdEGAT --set mongodbDatabase=OtpDatabase --set persistence.size=2Gi

helm upgrade --install -n erc-p2p session-mongodb stable/mongodb --set replicaSet.enabled=true --set mongodbRootPassword=Passw0rdEGAT --set mongodbUsername=user --set mongodbPassword=Passw0rdEGAT --set mongodbDatabase=SessionDatabase --set persistence.size=2Gi

helm upgrade --install -n erc-p2p userprofile-mongodb stable/mongodb --set replicaSet.enabled=true --set mongodbRootPassword=Passw0rdEGAT --set mongodbUsername=user --set mongodbPassword=Passw0rdEGAT --set mongodbDatabase=UserDatabase --set persistence.size=2Gi

helm upgrade --install -n erc-p2p reference-mongodb stable/mongodb --set replicaSet.enabled=true --set mongodbRootPassword=Passw0rdEGAT --set mongodbUsername=user --set mongodbPassword=Passw0rdEGAT --set mongodbDatabase=ReferenceDatabase --set persistence.size=2Gi

helm upgrade --install -n erc-p2p pool-mongodb stable/mongodb --set replicaSet.enabled=true --set mongodbRootPassword=Passw0rdEGAT --set mongodbUsername=user --set mongodbPassword=Passw0rdEGAT --set mongodbDatabase=PoolDatabase --set persistence.size=2Gi

helm upgrade --install -n erc-p2p bilateral-mongodb stable/mongodb --set replicaSet.enabled=true --set mongodbRootPassword=Passw0rdEGAT --set mongodbUsername=user --set mongodbPassword=Passw0rdEGAT --set mongodbDatabase=BilateralDatabase --set persistence.size=2Gi

helm upgrade --install -n erc-p2p trade-mongodb stable/mongodb --set replicaSet.enabled=true --set mongodbRootPassword=Passw0rdEGAT --set mongodbUsername=user --set mongodbPassword=Passw0rdEGAT --set mongodbDatabase=TradeDatabase --set persistence.size=2Gi

helm upgrade --install -n erc-p2p job-mongodb stable/mongodb --set replicaSet.enabled=true --set mongodbRootPassword=Passw0rdEGAT --set mongodbUsername=user --set mongodbPassword=Passw0rdEGAT --set mongodbDatabase=JobDatabase --set persistence.size=4Gi

helm upgrade --install -n erc-p2p masterdata-mongodb stable/mongodb --set architecture=replicaSet --set mongodbRootPassword=Passw0rdEGAT --set mongodbUsername=user --set mongodbPassword=Passw0rdEGAT --set mongodbDatabase=MasterDataDatabase --set persistence.size=2Gi
