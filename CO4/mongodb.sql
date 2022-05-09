use college
switched to db college
 db.createCollection("tkm");
{ "ok" : 1 }
db.tkm.insert({srn:"101",sname:"jjj",degree:"btech",sem:"1",cgpa:"5.2"});
WriteResult({ "nInserted" : 1 })
> db.tkm.insert({srn:"102",sname:"iii",degree:"bca",sem:"2",cgpa:"7.3"});
WriteResult({ "nInserted" : 1 })
> db.tkm.insert({srn:"103",sname:"hhh",degree:"barch",sem:"2",cgpa:"6.5"});
WriteResult({ "nInserted" : 1 })
> db.tkm.insert({srn:"104",sname:"nnn",degree:"bca",sem:"3",cgpa:"6.85"});
WriteResult({ "nInserted" : 1 })
> db.tkm.insert({srn:"105",sname:"mmm",degree:"bsc",sem:"4",cgpa:"7.45"});
WriteResult({ "nInserted" : 1 })
> db.tkm.insert({srn:"106",sname:"rrr",degree:"btech",sem:"1",cgpa:"8.1"});
WriteResult({ "nInserted" : 1 })
> db.tkm.insert({srn:"107",sname:"kkk",degree:"barch",sem:"2",cgpa:"6.85"});
WriteResult({ "nInserted" : 1 })
> db.tkm.insert({srn:"108",sname:"rahul",degree:"bca",sem:"3",cgpa:"7.56"});
WriteResult({ "nInserted" : 1 })
> db.tkm.insert({srn:"109",sname:"bajaj",degree:"bsc",sem:"4",cgpa:"6.3"});
WriteResult({ "nInserted" : 1 })
> db.tkm.insert({srn:"110",sname:"sundar",degree:"btech",sem:"3",cgpa:"6.79"});
WriteResult({ "nInserted" : 1 })
> db.tkm.find()
{ "_id" : ObjectId("a948d68eea8a7622227fe4af"), "srn" : "101", "sname" : "jjj", "degree" : "btech", "sem" : "1", "cgpa" : "5.2" }
{ "_id" : ObjectId("a948d6c1ea8a7622227fe4b0"), "srn" : "102", "sname" : "iii", "degree" : "bca", "sem" : "2", "cgpa" : "7.3" }
{ "_id" : ObjectId("a948d6faea8a7622227fe4b1"), "srn" : "103", "sname" : "hhh", "degree" : "barch", "sem" : "2", "cgpa" : "6.5" }
{ "_id" : ObjectId("a948d753ea8a7622227fe4b2"), "srn" : "104", "sname" : "nnn", "degree" : "bca", "sem" : "3", "cgpa" : "6.85" }
{ "_id" : ObjectId("a948d77eea8a7622227fe4b3"), "srn" : "105", "sname" : "mmm", "degree" : "bsc", "sem" : "4", "cgpa" : "7.45" }
{ "_id" : ObjectId("a948d7b9ea8a7622227fe4b4"), "srn" : "106", "sname" : "rrr", "degree" : "btech", "sem" : "1", "cgpa" : "8.1" }
{ "_id" : ObjectId("a948d7e7ea8a7622227fe4b5"), "srn" : "107", "sname" : "kkk", "degree" : "barch", "sem" : "2", "cgpa" : "6.85" }
{ "_id" : ObjectId("a948d833ea8a7622227fe4b6"), "srn" : "108", "sname" : "rahul", "degree" : "bca", "sem" : "3", "cgpa" : "7.56" }
{ "_id" : ObjectId("a948d866ea8a7622227fe4b7"), "srn" : "109", "sname" : "bajaj", "degree" : "bsc", "sem" : "4", "cgpa" : "6.3" }
{ "_id" : ObjectId("a948d896ea8a7622227fe4b8"), "srn" : "110", "sname" : "sundar", "degree" : "btech", "sem" : "3", "cgpa" : "6.79" }
> db.tkm.find().pretty();
{+
        "_id" : ObjectId("a948d68eea8a7622227fe4af"),
        "srn" : "101",
        "sname" : "jjj",
        "degree" : "btech",
        "sem" : "1",
        "cgpa" : "5.2"
}
{
        "_id" : ObjectId("a948d6c1ea8a7622227fe4b0"),
        "srn" : "102",
        "sname" : "iii",
        "degree" : "bca",
        "sem" : "2",
        "cgpa" : "7.3"
}
{
        "_id" : ObjectId("a948d6faea8a7622227fe4b1"),
        "srn" : "103",
        "sname" : "hhh",
        "degree" : "barch",
        "sem" : "2",
        "cgpa" : "6.5"
}
{
        "_id" : ObjectId("a948d753ea8a7622227fe4b2"),
        "srn" : "104",
        "sname" : "nnn",
        "degree" : "bca",
        "sem" : "3",
        "cgpa" : "6.85"
}
{
        "_id" : ObjectId("a948d77eea8a7622227fe4b3"),
        "srn" : "105",
        "sname" : "mmm",
        "degree" : "bsc",
        "sem" : "4",
        "cgpa" : "7.45"
}
{
        "_id" : ObjectId("a948d7b9ea8a7622227fe4b4"),
        "srn" : "106",
        "sname" : "rrr",
        "degree" : "btech",
        "sem" : "1",
        "cgpa" : "8.1"
}
{
        "_id" : ObjectId("a948d7e7ea8a7622227fe4b5"),
        "srn" : "107",
        "sname" : "kkk",
        "degree" : "barch",
        "sem" : "2",
        "cgpa" : "6.85"
}
{
        "_id" : ObjectId("a948d833ea8a7622227fe4b6"),
        "srn" : "108",
        "sname" : "rahul",
        "degree" : "bca",
        "sem" : "3",
        "cgpa" : "7.56"
}
{
        "_id" : ObjectId("a948d866ea8a7622227fe4b7"),
        "srn" : "109",
        "sname" : "bajaj",
        "degree" : "bsc",
        "sem" : "4",
        "cgpa" : "6.3"
}
{
        "_id" : ObjectId("a948d896ea8a7622227fe4b8"),
        "srn" : "110",
        "sname" : "sundar",
        "degree" : "btech",
        "sem" : "3",
        "cgpa" : "6.79"
}
> db.tkm.find({degree:"bca"})
{ "_id" : ObjectId("a948d6c1ea8a7622227fe4b0"), "srn" : "102", "sname" : "iii", "degree" : "bca", "sem" : "2", "cgpa" : "7.3" }
{ "_id" : ObjectId("a948d753ea8a7622227fe4b2"), "srn" : "104", "sname" : "nnn", "degree" : "bca", "sem" : "3", "cgpa" : "6.85" }
{ "_id" : ObjectId("a948d833ea8a7622227fe4b6"), "srn" : "108", "sname" : "rahul", "degree" : "bca", "sem" : "3", "cgpa" : "7.56" }
> db.tkm.find().sort({sname:1});
{ "_id" : ObjectId("a948d866ea8a7622227fe4b7"), "srn" : "109", "sname" : "bajaj", "degree" : "bsc", "sem" : "4", "cgpa" : "6.3" }
{ "_id" : ObjectId("a948d6faea8a7622227fe4b1"), "srn" : "103", "sname" : "hhh", "degree" : "barch", "sem" : "2", "cgpa" : "6.5" }
{ "_id" : ObjectId("a948d6c1ea8a7622227fe4b0"), "srn" : "102", "sname" : "iii", "degree" : "bca", "sem" : "2", "cgpa" : "7.3" }
{ "_id" : ObjectId("a948d68eea8a7622227fe4af"), "srn" : "101", "sname" : "jjj", "degree" : "btech", "sem" : "1", "cgpa" : "5.2" }
{ "_id" : ObjectId("a948d7e7ea8a7622227fe4b5"), "srn" : "107", "sname" : "kkk", "degree" : "barch", "sem" : "2", "cgpa" : "6.85" }
{ "_id" : ObjectId("a948d77eea8a7622227fe4b3"), "srn" : "105", "sname" : "mmm", "degree" : "bsc", "sem" : "4", "cgpa" : "7.45" }
{ "_id" : ObjectId("a948d753ea8a7622227fe4b2"), "srn" : "104", "sname" : "nnn", "degree" : "bca", "sem" : "3", "cgpa" : "6.85" }
{ "_id" : ObjectId("a948d833ea8a7622227fe4b6"), "srn" : "108", "sname" : "rahul", "degree" : "bca", "sem" : "3", "cgpa" : "7.56" }
{ "_id" : ObjectId("a948d7b9ea8a7622227fe4b4"), "srn" : "106", "sname" : "rrr", "degree" : "btech", "sem" : "1", "cgpa" : "8.1" }
{ "_id" : ObjectId("a948d896ea8a7622227fe4b8"), "srn" : "110", "sname" : "sundar", "degree" : "btech", "sem" : "3", "cgpa" : "6.79" }
> db.tkm.find().limit(5);
{ "_id" : ObjectId("a948d68eea8a7622227fe4af"), "srn" : "101", "sname" : "jjj", "degree" : "btech", "sem" : "1", "cgpa" : "5.2" }
{ "_id" : ObjectId("a948d6c1ea8a7622227fe4b0"), "srn" : "102", "sname" : "iii", "degree" : "bca", "sem" : "2", "cgpa" : "7.3" }
{ "_id" : ObjectId("a948d6faea8a7622227fe4b1"), "srn" : "103", "sname" : "hhh", "degree" : "barch", "sem" : "2", "cgpa" : "6.5" }
{ "_id" : ObjectId("a948d753ea8a7622227fe4b2"), "srn" : "104", "sname" : "nnn", "degree" : "bca", "sem" : "3", "cgpa" : "6.85" }
{ "_id" : ObjectId("a948d77eea8a7622227fe4b3"), "srn" : "105", "sname" : "mmm", "degree" : "bsc", "sem" : "4", "cgpa" : "7.45" }
> db.tkm.find().skip(4).limit(3);
{ "_id" : ObjectId("a948d77eea8a7622227fe4b3"), "srn" : "105", "sname" : "mmm", "degree" : "bsc", "sem" : "4", "cgpa" : "7.45" }
{ "_id" : ObjectId("a948d7b9ea8a7622227fe4b4"), "srn" : "106", "sname" : "rrr", "degree" : "btech", "sem" : "1", "cgpa" : "8.1" }
{ "_id" : ObjectId("a948d7e7ea8a7622227fe4b5"), "srn" : "107", "sname" : "kkk", "degree" : "barch", "sem" : "2", "cgpa" : "6.85" }
> db.tkm.find().({sname:"rahul"},{sname,degree});
> db.tkm.find({sname:"rahul"},{sname:1,degree:1});
{ "_id" : ObjectId("a948d833ea8a7622227fe4b6"), "sname" : "rahul", "degree" : "bca" }
> db.tkm.find().sort({cgpa:-1}).skip(4).limit(3);
{ "_id" : ObjectId("a948d753ea8a7622227fe4b2"), "srn" : "104", "sname" : "nnn", "degree" : "bca", "sem" : "3", "cgpa" : "6.85" }
{ "_id" : ObjectId("a948d7e7ea8a7622227fe4b5"), "srn" : "107", "sname" : "kkk", "degree" : "barch", "sem" : "2", "cgpa" : "6.85" }
{ "_id" : ObjectId("a948d896ea8a7622227fe4b8"), "srn" : "110", "sname" : "sundar", "degree" : "btech", "sem" : "3", "cgpa" : "6.79" }
> db.tkm.find({sname:"bca"}).count();
0
> db.tkm.find({degree:"bca"}).count();
3
> db.tkm.find({},{"degree":1,_id:0});
{ "degree" : "btech" }
{ "degree" : "bca" }
{ "degree" : "barch" }
{ "degree" : "bca" }
{ "degree" : "bsc" }
{ "degree" : "btech" }
{ "degree" : "barch" }
{ "degree" : "bca" }
{ "degree" : "bsc" }
{ "degree" : "btech" }
> db.tkm.find({$and:[{"degree":"bca"},{"cgpa":{$gt:"6"}},{"cgpa":{$lt:"8"}}]})
{ "_id" : ObjectId("a948d2c4f7d11cdb8c30ca02"), "srn" : "102", "sname" : "iii", "degree" : "bca", "sem" : "2", "cgpa" : "7.3" }
{ "_id" : ObjectId("a948d2eaf7d11cdb8c30ca04"), "srn" : "104", "sname" : "nnn", "degree" : "bca", "sem" : "3", "cgpa" : "6.85" }
{ "_id" : ObjectId("a948d36af7d11cdb8c30ca08"), "srn" : "108", "sname" : "rahul", "degree" : "bca", "sem" : "3", "cgpa" : "7.56" }
> db.tkm.find({$and:[{"degree":"bca"},{"sem":"6"}]})
> db.tkm.insert({srn:"110",sname:"sundar",degree:"bca",sem:"6",cgpa:"6.79"});
WriteResult({ "nInserted" : 1 })
> db.tkm.find({$and:[{"degree":"bca"},{"sem":"6"}]})
{ "_id" : ObjectId("a948d4cef7d11cdb8c30ca0b"), "srn" : "110", "sname" : "sundar", "degree" : "bca", "sem" : "6", "cgpa" : "6.79" }
