import pymongo
conn=pymongo.MongoClient("mongodb://localhost:27017/");
db=conn["students"];
# print(db.list_collection_names())
col=db["mark"];
# data=[
#     {"mark1":100,"mark2":88,"mark3":67,"Name":"Adwait","roll_no":10},
#     {"mark1":50,"mark2":98,"mark3":62,"Name":"Donald","roll_no":19},
#     {"mark1":70,"mark2":86,"mark3":67,"Name":"Trump","roll_no":67}
#     ]
# col.insert_many(data);
# print(list(col.find()));
# print(col.find_one({"Name":"Donald"}));
# for doc in col.find({"Name": "Donald"}):
#     print(doc)

# for doc in col.find().sort("roll_no", -1):
#     print(doc)
# for doc in col.find():
#     mark1=doc.get("mark1");
#     mark2=doc.get("mark2");
#     mark3=doc.get("mark3");

#     total=mark1+mark2+mark3;
#     print(f"Name:{doc.get('Name')}, Total Marks:{total}")

# for doc in col.find():
#     name = doc.get("Name", "")
#     if name.startswith("A"):
#         print(f"Name: {name}")

# my_query = {"roll_no":10}
# new_values = {"$set": {"mark1": 90, "mark2": 85, "mark3": 95}} 
# col.update_one(my_query, new_values)

query = {"roll_no": 10}  
result = col.delete_many(query)