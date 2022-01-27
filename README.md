# egat-p2p Project
Deployment process writen by Kris Jermvivatkul 
11/22/2021
iknowplus

# backend Deployment 

1. Start by Deploying Mongodb Databases
- run bitnami-database.sh shellscript to deploy
sh backend-api/bitnami-database.sh

2. Deploy all of the APIs and its service
- run update_application.sh shellscript to deploy the whole api
sh update_application.sh

# Update backend Deployments
1. Update deployment to newest version by (will not update svc)
- git pull 
- bash deployment_update.sh

# Update backend Service
1. Update the APIs services
- git pull
sh update_svc.sh

