ssh root@10.40.58.169

curl -H "Accept:application/json" localhost:30500/connectors/

curl -X DELETE localhost:30500/connectors/MasterData/

curl -X POST localhost:30500/connectors -H 'Content-Type: application/json' -d '{
"name": "MasterData",
"config": {
  "connector.class": "io.debezium.connector.mongodb.MongoDbConnector",
  "mongodb.hosts": "rs0/masterdata-mongodb-external-svc:27017",
  "mongodb.user": "dbz",
  "mongodb.password": "Passw0rd",
  "mongodb.name": "masterdata",
  "mongodb.authsource":"admin",
  "database.whitelist":"MasterDataDatabase",
  "tasks.max":"5",
  "transforms.unwrap.type":"io.debezium.connector.mongodb.transforms.ExtractNewDocumentState",
  "transforms": "unwrap",
  "transforms.unwrap.add.headers": "op"

   }
 }'

 # exec into mongodb

 use admin;
 db.createRole({
    role: "debezium",
    privileges: [
        { resource: { db: "config", collection: "" }, actions: [ "find" ] },
        { resource: { db: "local", collection: "oplog.rs" }, actions: [ "find" ] },
        { resource: { db: "", collection: ""}, actions: ["listDatabases", "listCollections", "find"] }
    ],
    roles: [
        { role: "readWrite", db: "admin" }
    ]
})
db.createUser({user: "dbz", pwd: "Passw0rd", roles: ["debezium"]});

#mongodb.name/Database/Collection

k -n kafka-connect exec -it kafka-client -- kafka-console-consumer --topic masterdata.MasterDataDatabase.testdatabase --from-beginning --bootstrap-server kafka:9092