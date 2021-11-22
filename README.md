# egat-p2p Project
Deployment process writen by Kris Jermvivatkul 
11/22/2021
iknowplus

# backend Deployment 

1. Start from meter-api first
- Deploy Mongodb by following meterdb-helm-install.txt file
- Deploy meter-api by running kubectl apply -f egat-p2p-meter-api-deployment.yaml -f egat-p2p-meter-api-service.yaml
2. register-api
- kubectl apply -f . (for register-api folder) (might have to change mongo to helm installation)

