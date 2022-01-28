Only do this when trying if there is old PVC that u really have to keep

1. Apply helm upgrade for each mongodb one by one
2. exec into the mongodb 
3. rs.conf()
4. copy the config
5. edit the config to match the host you want 
6. copy that reconfig
7. rs.reconf({theCONFIGyouEdit})
8. check logs and pod
9. check mongodb for the collection and data

If don't need to keep data
1. helm uninstall that db
2. delete the PVC related to that mongodb
3. helm install the mongodb to into version 3.10.0