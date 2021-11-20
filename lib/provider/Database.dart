import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DatabaseService{

    late final String uid;
   // DatabaseService({ required this.uid});

    final CollectionReference Users = FirebaseFirestore.instance.collection('Users');
    Future<void> addName (String name,uid)async {
        return await FirebaseFirestore.instance
            .collection("Users")
            .doc(uid)
            .set({'name': name})
            .catchError((e){
                print(e.toString());
        });
    }
    // Future<void> addBasicData (Map basicInfo)async{
    //      await FirebaseFirestore.instance
    //         .collection("Users")
    //         .doc(uid)
    //         .collection("Info")
    //         .add(basicInfo);
    // }
}
