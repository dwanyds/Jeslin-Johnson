Microsoft Windows [Version 10.0.15063]
(c) 2017 Microsoft Corporation. All rights reserved.

C:\Program Files\MongoDB\Server\5.0\bin>mongo
MongoDB shell version v5.0.8
connecting to: mongodb://127.0.0.1:27017/?compressors=disabled&gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("3d25ee93-fc19-497a-8942-c48957797a77") }
MongoDB server version: 5.0.8
================
Warning: the "mongo" shell has been superseded by "mongosh",
which delivers improved usability and compatibility.The "mongo" shell has been deprecated and will be removed in
an upcoming release.
For installation instructions, see
https://docs.mongodb.com/mongodb-shell/install/
================
---
The server generated these startup warnings when booting:
        2060-01-01T00:00:46.586+05:30: Access control is not enabled for the database. Read and write access to data and configuration is unrestricted
---
---
        Enable MongoDB's free cloud-based monitoring service, which will then receive and display
        metrics about your deployment (disk utilization, CPU, operation statistics, etc).

        The monitoring data will be available on a MongoDB website with a unique URL accessible to you
        and anyone you share the URL with. MongoDB may use this information to make product
        improvements and to suggest MongoDB products and deployment options to you.

        To enable free monitoring, run the following command: db.enableFreeMonitoring()
        To permanently disable this reminder, run the following command: db.disableFreeMonitoring()
---
> db.employee.find().pretty()
> show databases
admin     0.000GB
college   0.000GB
config    0.000GB
employee  0.000GB
local     0.000GB
student   0.000GB
> use employee
switched to db employee
> db.emp.find().pretty()
{
        "_id" : ObjectId("62821b15dcbc92924d9dc49a"),
        "eid" : 101,
        "ename" : "jeslin",
        "dept" : "mca",
        "design" : "hod",
        "salary" : 100000,
        "address" : {
                "dno" : 101,
                "street" : "johns villa",
                "locality" : "Aranattukara",
                "city" : "thrissur"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821c29dcbc92924d9dc49c"),
        "eid" : 103,
        "ename" : "kennedy",
        "dept" : "mca",
        "design" : "prof",
        "salary" : 150000,
        "yoj" : 2015,
        "address" : {
                "dno" : 333,
                "street" : "rrr nagar",
                "locality" : "edappally",
                "city" : "kollam"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821c5edcbc92924d9dc49d"),
        "eid" : 102,
        "ename" : "jerald",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 70000,
        "yoj" : 2013,
        "address" : {
                "dno" : 222,
                "street" : "svs nagar",
                "locality" : "ollur",
                "city" : "thrissur"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821df6dcbc92924d9dc49e"),
        "eid" : 105,
        "ename" : "rahul",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 55000,
        "yoj" : 2015,
        "address" : {
                "dno" : 444,
                "street" : "lll nagar",
                "locality" : "randamkutty",
                "city" : "ekm"
        },
        "age" : 30
}
>
> db.emp.updateMany({eid:101},{$push:{project:10})
...
...
> db.emp.updateMany({eid:101},{$push:{project:10})
...
...
>  db.emp.updateMany({eid:101},{$set:{project:10})
...
...
> db.emp.find().pretty()
{
        "_id" : ObjectId("62821b15dcbc92924d9dc49a"),
        "eid" : 101,
        "ename" : "jeslin",
        "dept" : "mca",
        "design" : "hod",
        "salary" : 100000,
        "address" : {
                "dno" : 101,
                "street" : "johns villa",
                "locality" : "Aranattukara",
                "city" : "thrissur"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821c29dcbc92924d9dc49c"),
        "eid" : 103,
        "ename" : "kennedy",
        "dept" : "mca",
        "design" : "prof",
        "salary" : 150000,
        "yoj" : 2015,
        "address" : {
                "dno" : 333,
                "street" : "rrr nagar",
                "locality" : "edappally",
                "city" : "kollam"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821c5edcbc92924d9dc49d"),
        "eid" : 102,
        "ename" : "jerald",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 70000,
        "yoj" : 2013,
        "address" : {
                "dno" : 222,
                "street" : "svs nagar",
                "locality" : "ollur",
                "city" : "thrissur"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821df6dcbc92924d9dc49e"),
        "eid" : 105,
        "ename" : "rahul",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 55000,
        "yoj" : 2015,
        "address" : {
                "dno" : 444,
                "street" : "lll nagar",
                "locality" : "randamkutty",
                "city" : "ekm"
        },
        "age" : 30
}
> db.emp.updateMany({eid:101},{$set:{"project":1}})
{ "acknowledged" : true, "matchedCount" : 1, "modifiedCount" : 1 }
> db.emp.find().pretty()
{
        "_id" : ObjectId("62821b15dcbc92924d9dc49a"),
        "eid" : 101,
        "ename" : "jeslin",
        "dept" : "mca",
        "design" : "hod",
        "salary" : 100000,
        "address" : {
                "dno" : 101,
                "street" : "johns villa",
                "locality" : "Aranattukara",
                "city" : "thrissur"
        },
        "age" : 30,
        "project" : 1
}
{
        "_id" : ObjectId("62821c29dcbc92924d9dc49c"),
        "eid" : 103,
        "ename" : "kennedy",
        "dept" : "mca",
        "design" : "prof",
        "salary" : 150000,
        "yoj" : 2015,
        "address" : {
                "dno" : 333,
                "street" : "rrr nagar",
                "locality" : "edappally",
                "city" : "kollam"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821c5edcbc92924d9dc49d"),
        "eid" : 102,
        "ename" : "jerald",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 70000,
        "yoj" : 2013,
        "address" : {
                "dno" : 222,
                "street" : "svs nagar",
                "locality" : "ollur",
                "city" : "thrissur"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821df6dcbc92924d9dc49e"),
        "eid" : 105,
        "ename" : "rahul",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 55000,
        "yoj" : 2015,
        "address" : {
                "dno" : 444,
                "street" : "lll nagar",
                "locality" : "randamkutty",
                "city" : "ekm"
        },
        "age" : 30
}
> db.emp.updateMany({eid:101},{$push:{"project":1}})
WriteError({
        "index" : 0,
        "code" : 2,
        "errmsg" : "The field 'project' must be an array but is of type double in document {_id: ObjectId('62821b15dcbc92924d9dc49a')}",
        "op" : {
                "q" : {
                        "eid" : 101
                },
                "u" : {
                        "$push" : {
                                "project" : 1
                        }
                },
                "multi" : true,
                "upsert" : false
        }
}) :
WriteError({
        "index" : 0,
        "code" : 2,
        "errmsg" : "The field 'project' must be an array but is of type double in document {_id: ObjectId('62821b15dcbc92924d9dc49a')}",
        "op" : {
                "q" : {
                        "eid" : 101
                },
                "u" : {
                        "$push" : {
                                "project" : 1
                        }
                },
                "multi" : true,
                "upsert" : false
        }
})
WriteError@src/mongo/shell/bulk_api.js:465:48
mergeBatchResults@src/mongo/shell/bulk_api.js:871:49
executeBatch@src/mongo/shell/bulk_api.js:940:13
Bulk/this.execute@src/mongo/shell/bulk_api.js:1182:21
DBCollection.prototype.updateMany@src/mongo/shell/crud_api.js:690:17
@(shell):1:1
> db.emp.find().pretty()
{
        "_id" : ObjectId("62821b15dcbc92924d9dc49a"),
        "eid" : 101,
        "ename" : "jeslin",
        "dept" : "mca",
        "design" : "hod",
        "salary" : 100000,
        "address" : {
                "dno" : 101,
                "street" : "johns villa",
                "locality" : "Aranattukara",
                "city" : "thrissur"
        },
        "age" : 30,
        "project" : 1
}
{
        "_id" : ObjectId("62821c29dcbc92924d9dc49c"),
        "eid" : 103,
        "ename" : "kennedy",
        "dept" : "mca",
        "design" : "prof",
        "salary" : 150000,
        "yoj" : 2015,
        "address" : {
                "dno" : 333,
                "street" : "rrr nagar",
                "locality" : "edappally",
                "city" : "kollam"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821c5edcbc92924d9dc49d"),
        "eid" : 102,
        "ename" : "jerald",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 70000,
        "yoj" : 2013,
        "address" : {
                "dno" : 222,
                "street" : "svs nagar",
                "locality" : "ollur",
                "city" : "thrissur"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821df6dcbc92924d9dc49e"),
        "eid" : 105,
        "ename" : "rahul",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 55000,
        "yoj" : 2015,
        "address" : {
                "dno" : 444,
                "street" : "lll nagar",
                "locality" : "randamkutty",
                "city" : "ekm"
        },
        "age" : 30
}
> db.emp.updateMany({eid:101},{$push:{"project":10}})
WriteError({
        "index" : 0,
        "code" : 2,
        "errmsg" : "The field 'project' must be an array but is of type double in document {_id: ObjectId('62821b15dcbc92924d9dc49a')}",
        "op" : {
                "q" : {
                        "eid" : 101
                },
                "u" : {
                        "$push" : {
                                "project" : 10
                        }
                },
                "multi" : true,
                "upsert" : false
        }
}) :
WriteError({
        "index" : 0,
        "code" : 2,
        "errmsg" : "The field 'project' must be an array but is of type double in document {_id: ObjectId('62821b15dcbc92924d9dc49a')}",
        "op" : {
                "q" : {
                        "eid" : 101
                },
                "u" : {
                        "$push" : {
                                "project" : 10
                        }
                },
                "multi" : true,
                "upsert" : false
        }
})
WriteError@src/mongo/shell/bulk_api.js:465:48
mergeBatchResults@src/mongo/shell/bulk_api.js:871:49
executeBatch@src/mongo/shell/bulk_api.js:940:13
Bulk/this.execute@src/mongo/shell/bulk_api.js:1182:21
DBCollection.prototype.updateMany@src/mongo/shell/crud_api.js:690:17
@(shell):1:1
> db.emp.find().pretty()
{
        "_id" : ObjectId("62821b15dcbc92924d9dc49a"),
        "eid" : 101,
        "ename" : "jeslin",
        "dept" : "mca",
        "design" : "hod",
        "salary" : 100000,
        "address" : {
                "dno" : 101,
                "street" : "johns villa",
                "locality" : "Aranattukara",
                "city" : "thrissur"
        },
        "age" : 30,
        "project" : 1
}
{
        "_id" : ObjectId("62821c29dcbc92924d9dc49c"),
        "eid" : 103,
        "ename" : "kennedy",
        "dept" : "mca",
        "design" : "prof",
        "salary" : 150000,
        "yoj" : 2015,
        "address" : {
                "dno" : 333,
                "street" : "rrr nagar",
                "locality" : "edappally",
                "city" : "kollam"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821c5edcbc92924d9dc49d"),
        "eid" : 102,
        "ename" : "jerald",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 70000,
        "yoj" : 2013,
        "address" : {
                "dno" : 222,
                "street" : "svs nagar",
                "locality" : "ollur",
                "city" : "thrissur"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821df6dcbc92924d9dc49e"),
        "eid" : 105,
        "ename" : "rahul",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 55000,
        "yoj" : 2015,
        "address" : {
                "dno" : 444,
                "street" : "lll nagar",
                "locality" : "randamkutty",
                "city" : "ekm"
        },
        "age" : 30
}
> db.emp.update({eid:101},{$pull:{"project":1}})
WriteResult({
        "nMatched" : 0,
        "nUpserted" : 0,
        "nModified" : 0,
        "writeError" : {
                "code" : 2,
                "errmsg" : "Cannot apply $pull to a non-array value"
        }
})
> db.emp.find().pretty()
{
        "_id" : ObjectId("62821b15dcbc92924d9dc49a"),
        "eid" : 101,
        "ename" : "jeslin",
        "dept" : "mca",
        "design" : "hod",
        "salary" : 100000,
        "address" : {
                "dno" : 101,
                "street" : "johns villa",
                "locality" : "Aranattukara",
                "city" : "thrissur"
        },
        "age" : 30,
        "project" : 1
}
{
        "_id" : ObjectId("62821c29dcbc92924d9dc49c"),
        "eid" : 103,
        "ename" : "kennedy",
        "dept" : "mca",
        "design" : "prof",
        "salary" : 150000,
        "yoj" : 2015,
        "address" : {
                "dno" : 333,
                "street" : "rrr nagar",
                "locality" : "edappally",
                "city" : "kollam"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821c5edcbc92924d9dc49d"),
        "eid" : 102,
        "ename" : "jerald",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 70000,
        "yoj" : 2013,
        "address" : {
                "dno" : 222,
                "street" : "svs nagar",
                "locality" : "ollur",
                "city" : "thrissur"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821df6dcbc92924d9dc49e"),
        "eid" : 105,
        "ename" : "rahul",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 55000,
        "yoj" : 2015,
        "address" : {
                "dno" : 444,
                "street" : "lll nagar",
                "locality" : "randamkutty",
                "city" : "ekm"
        },
        "age" : 30
}
> db.emp.update({eid:102},{$push:{"project":1}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.emp.find().pretty()
{
        "_id" : ObjectId("62821b15dcbc92924d9dc49a"),
        "eid" : 101,
        "ename" : "jeslin",
        "dept" : "mca",
        "design" : "hod",
        "salary" : 100000,
        "address" : {
                "dno" : 101,
                "street" : "johns villa",
                "locality" : "Aranattukara",
                "city" : "thrissur"
        },
        "age" : 30,
        "project" : 1
}
{
        "_id" : ObjectId("62821c29dcbc92924d9dc49c"),
        "eid" : 103,
        "ename" : "kennedy",
        "dept" : "mca",
        "design" : "prof",
        "salary" : 150000,
        "yoj" : 2015,
        "address" : {
                "dno" : 333,
                "street" : "rrr nagar",
                "locality" : "edappally",
                "city" : "kollam"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821c5edcbc92924d9dc49d"),
        "eid" : 102,
        "ename" : "jerald",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 70000,
        "yoj" : 2013,
        "address" : {
                "dno" : 222,
                "street" : "svs nagar",
                "locality" : "ollur",
                "city" : "thrissur"
        },
        "age" : 30,
        "project" : [
                1
        ]
}
{
        "_id" : ObjectId("62821df6dcbc92924d9dc49e"),
        "eid" : 105,
        "ename" : "rahul",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 55000,
        "yoj" : 2015,
        "address" : {
                "dno" : 444,
                "street" : "lll nagar",
                "locality" : "randamkutty",
                "city" : "ekm"
        },
        "age" : 30
}
> db.emp.update({eid:102},{$push:{"project":100}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.emp.find().pretty()
{
        "_id" : ObjectId("62821b15dcbc92924d9dc49a"),
        "eid" : 101,
        "ename" : "jeslin",
        "dept" : "mca",
        "design" : "hod",
        "salary" : 100000,
        "address" : {
                "dno" : 101,
                "street" : "johns villa",
                "locality" : "Aranattukara",
                "city" : "thrissur"
        },
        "age" : 30,
        "project" : 1
}
{
        "_id" : ObjectId("62821c29dcbc92924d9dc49c"),
        "eid" : 103,
        "ename" : "kennedy",
        "dept" : "mca",
        "design" : "prof",
        "salary" : 150000,
        "yoj" : 2015,
        "address" : {
                "dno" : 333,
                "street" : "rrr nagar",
                "locality" : "edappally",
                "city" : "kollam"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821c5edcbc92924d9dc49d"),
        "eid" : 102,
        "ename" : "jerald",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 70000,
        "yoj" : 2013,
        "address" : {
                "dno" : 222,
                "street" : "svs nagar",
                "locality" : "ollur",
                "city" : "thrissur"
        },
        "age" : 30,
        "project" : [
                1,
                100
        ]
}
{
        "_id" : ObjectId("62821df6dcbc92924d9dc49e"),
        "eid" : 105,
        "ename" : "rahul",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 55000,
        "yoj" : 2015,
        "address" : {
                "dno" : 444,
                "street" : "lll nagar",
                "locality" : "randamkutty",
                "city" : "ekm"
        },
        "age" : 30
}
> db.emp.update({eid:102},{$push:{"project":[10,20]}})
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
> db.emp.find().pretty()
{
        "_id" : ObjectId("62821b15dcbc92924d9dc49a"),
        "eid" : 101,
        "ename" : "jeslin",
        "dept" : "mca",
        "design" : "hod",
        "salary" : 100000,
        "address" : {
                "dno" : 101,
                "street" : "johns villa",
                "locality" : "Aranattukara",
                "city" : "thrissur"
        },
        "age" : 30,
        "project" : 1
}
{
        "_id" : ObjectId("62821c29dcbc92924d9dc49c"),
        "eid" : 103,
        "ename" : "kennedy",
        "dept" : "mca",
        "design" : "prof",
        "salary" : 150000,
        "yoj" : 2015,
        "address" : {
                "dno" : 333,
                "street" : "rrr nagar",
                "locality" : "edappally",
                "city" : "kollam"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821c5edcbc92924d9dc49d"),
        "eid" : 102,
        "ename" : "jerald",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 70000,
        "yoj" : 2013,
        "address" : {
                "dno" : 222,
                "street" : "svs nagar",
                "locality" : "ollur",
                "city" : "thrissur"
        },
        "age" : 30,
        "project" : [
                1,
                100,
                [
                        10,
                        20
                ]
        ]
}
{
        "_id" : ObjectId("62821df6dcbc92924d9dc49e"),
        "eid" : 105,
        "ename" : "rahul",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 55000,
        "yoj" : 2015,
        "address" : {
                "dno" : 444,
                "street" : "lll nagar",
                "locality" : "randamkutty",
                "city" : "ekm"
        },
        "age" : 30
}
> db.emp.find({ename:{$regex:"j"}}).pretty();
{
        "_id" : ObjectId("62821b15dcbc92924d9dc49a"),
        "eid" : 101,
        "ename" : "jeslin",
        "dept" : "mca",
        "design" : "hod",
        "salary" : 100000,
        "address" : {
                "dno" : 101,
                "street" : "johns villa",
                "locality" : "Aranattukara",
                "city" : "thrissur"
        },
        "age" : 30,
        "project" : 1
}
{
        "_id" : ObjectId("62821c5edcbc92924d9dc49d"),
        "eid" : 102,
        "ename" : "jerald",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 70000,
        "yoj" : 2013,
        "address" : {
                "dno" : 222,
                "street" : "svs nagar",
                "locality" : "ollur",
                "city" : "thrissur"
        },
        "age" : 30,
        "project" : [
                1,
                100,
                [
                        10,
                        20
                ]
        ]
}
> db.emp.find({ename:{$regex:^r}}).pretty();
uncaught exception: SyntaxError: expected expression, got '^' :
@(shell):1:27
> db.emp.find({ename:{$regex:"^r"}}).pretty();
{
        "_id" : ObjectId("62821df6dcbc92924d9dc49e"),
        "eid" : 105,
        "ename" : "rahul",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 55000,
        "yoj" : 2015,
        "address" : {
                "dno" : 444,
                "street" : "lll nagar",
                "locality" : "randamkutty",
                "city" : "ekm"
        },
        "age" : 30
}
> db.emp.find({ename:{$regex:"^r"}},{ename:1}).pretty();
{ "_id" : ObjectId("62821df6dcbc92924d9dc49e"), "ename" : "rahul" }
> db.emp.find({ename:{$regex:"n$"}},{ename:1}).pretty();
{ "_id" : ObjectId("62821b15dcbc92924d9dc49a"), "ename" : "jeslin" }
> db.emp.find({ename:{$regex:^r}}).pretty();
uncaught exception: SyntaxError: expected expression, got '^' :
@(shell):1:27
> db.emp.remove({"ename":"rahul"})
WriteResult({ "nRemoved" : 1 })
> db.emp.find().pretty()
{
        "_id" : ObjectId("62821b15dcbc92924d9dc49a"),
        "eid" : 101,
        "ename" : "jeslin",
        "dept" : "mca",
        "design" : "hod",
        "salary" : 100000,
        "address" : {
                "dno" : 101,
                "street" : "johns villa",
                "locality" : "Aranattukara",
                "city" : "thrissur"
        },
        "age" : 30,
        "project" : 1
}
{
        "_id" : ObjectId("62821c29dcbc92924d9dc49c"),
        "eid" : 103,
        "ename" : "kennedy",
        "dept" : "mca",
        "design" : "prof",
        "salary" : 150000,
        "yoj" : 2015,
        "address" : {
                "dno" : 333,
                "street" : "rrr nagar",
                "locality" : "edappally",
                "city" : "kollam"
        },
        "age" : 30
}
{
        "_id" : ObjectId("62821c5edcbc92924d9dc49d"),
        "eid" : 102,
        "ename" : "jerald",
        "dept" : "mca",
        "design" : "Asst prof",
        "salary" : 70000,
        "yoj" : 2013,
        "address" : {
                "dno" : 222,
                "street" : "svs nagar",
                "locality" : "ollur",
                "city" : "thrissur"
        },
        "age" : 30,
        "project" : [
                1,
                100,
                [
                        10,
                        20
                ]
        ]
}
> db.emp.remove({"ename":"rahul"})
WriteResult({ "nRemoved" : 0 })
> use candidte
switched to db candidte
> db.createCollection("details");
{ "ok" : 1 }
> db.details.insert({"name":"jessica","age":23,"gender":"female","amount":45000})
WriteResult({ "nInserted" : 1 })
>  db.details.insert({"name":"jessica","age":23,"gender":"female","amount":45000}) db.details.insert({"name":"jessica","age":23,"gender":"female","amount":45000})
uncaught exception: SyntaxError: unexpected token: identifier :
@(shell):1:80
> db.details.fimnd()
uncaught exception: TypeError: db.details.fimnd is not a function :
@(shell):1:1
> db.details.find()
{ "_id" : ObjectId("628b4a61b94391533074de2a"), "name" : "jessica", "age" : 23, "gender" : "female", "amount" : 45000 }
>  db.details.insert({"name":"jaanet","age":25,"gender":"female","amount":55000})
WriteResult({ "nInserted" : 1 })
>  db.details.insert({"name":"george","age":27,"gender":"male","amount":78000})
WriteResult({ "nInserted" : 1 })
>  db.details.insert({"name":"kennedy","age":24,"gender":"male","amount":85000})
WriteResult({ "nInserted" : 1 })
>  db.details.insert({"name":"catherine","age":24,"gender":"female","amount":65000})
WriteResult({ "nInserted" : 1 })
>  db.details.insert({"name":"sebastian","age":29,"gender":"male","amount":50000})
WriteResult({ "nInserted" : 1 })
>  db.details.insert({"name":"juvan","age":25,"gender":"male","amount":85000})
WriteResult({ "nInserted" : 1 })
> db.details.find()
{ "_id" : ObjectId("628b4a61b94391533074de2a"), "name" : "jessica", "age" : 23, "gender" : "female", "amount" : 45000 }
{ "_id" : ObjectId("628b4b59b94391533074de2b"), "name" : "jaanet", "age" : 25, "gender" : "female", "amount" : 55000 }
{ "_id" : ObjectId("628b4b83b94391533074de2c"), "name" : "george", "age" : 27, "gender" : "male", "amount" : 78000 }
{ "_id" : ObjectId("628b4ba6b94391533074de2d"), "name" : "kennedy", "age" : 24, "gender" : "male", "amount" : 85000 }
{ "_id" : ObjectId("628b4bd1b94391533074de2e"), "name" : "catherine", "age" : 24, "gender" : "female", "amount" : 65000 }
{ "_id" : ObjectId("628b4bfbb94391533074de2f"), "name" : "sebastian", "age" : 29, "gender" : "male", "amount" : 50000 }
{ "_id" : ObjectId("628b4c57b94391533074de30"), "name" : "juvan", "age" : 25, "gender" : "male", "amount" : 85000 }
>
> db.details.find({$or:[{"gender":"male"},{"age":{$lt:25}}]})
{ "_id" : ObjectId("628b4a61b94391533074de2a"), "name" : "jessica", "age" : 23, "gender" : "female", "amount" : 45000 }
{ "_id" : ObjectId("628b4b83b94391533074de2c"), "name" : "george", "age" : 27, "gender" : "male", "amount" : 78000 }
{ "_id" : ObjectId("628b4ba6b94391533074de2d"), "name" : "kennedy", "age" : 24, "gender" : "male", "amount" : 85000 }
{ "_id" : ObjectId("628b4bd1b94391533074de2e"), "name" : "catherine", "age" : 24, "gender" : "female", "amount" : 65000 }
{ "_id" : ObjectId("628b4bfbb94391533074de2f"), "name" : "sebastian", "age" : 29, "gender" : "male", "amount" : 50000 }
{ "_id" : ObjectId("628b4c57b94391533074de30"), "name" : "juvan", "age" : 25, "gender" : "male", "amount" : 85000 }
> db.details.find({$and:[{"gender":"male"},{"age":{$lt:25}}]})
{ "_id" : ObjectId("628b4ba6b94391533074de2d"), "name" : "kennedy", "age" : 24, "gender" : "male", "amount" : 85000 }
> db.details.aggregate([{$group:{_id:"$gender",'total amount':{$sum:'$amount'}}}])
{ "_id" : "male", "total amount" : 298000 }
{ "_id" : "female", "total amount" : 165000 }
> db.details.aggregate([{$match:{'age':{$gt:25}}},{$group:{_id:"$gender",'total amount':{$avg:$amount}}}])
uncaught exception: ReferenceError: $amount is not defined :
@(shell):1:88
> db.details.aggregate([{$match:{'age':{$gt:25}}},{$group:{_id:"$gender",'total amount':{$avg:"$amount"}}}])
{ "_id" : "male", "total amount" : 64000 }
> db.details.aggregate([{$match:{'age':{$gt:25}}},{$group:{_id:"$gender",'total amount':{$avg:"$amount"}}},{$sort:{avg:1}}])
{ "_id" : "male", "total amount" : 64000 }
(i-search)`':
