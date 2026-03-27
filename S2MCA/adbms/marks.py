import pymongo
conn=pymongo.MongoClient("mongodb://localhost:27017/");
db=conn["students"];
# print(db.list_collection_names())
col=db["mark"];
# data={"mark":100,"Name":"Donald","roll_no":10}
# col.insert_one(data);
# print(list(col.find()));
# print(col.find_one({"Name":"Donald"}));
# for doc in col.find({"Name": "Donald"}):
#     print(doc)
for doc in col.find().sort("roll_no", -1):
    print(doc)