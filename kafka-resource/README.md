# Initial kafka debezium connection with mongodb
1. Connect the debezium with the mongodb that you want to grab on.
   - Curl -X POST command to connect
2. Create role and user in that mongodb

# Switching db 
1. Check what connectors name that is being grab
   - Curl -H command
2. Delete the connection
   - curl -X DELETE localhost:30500/connectors/${curl -H output}/
