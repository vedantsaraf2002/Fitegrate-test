import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class DatabaseService{

    var uid;
    
    // DatabaseService({ required this.uid});

   // final CollectionReference Users = FirebaseFirestore.instance.collection('Users');
    void enterUID (uid) async {
      this.uid = uid;
      print(uid);
    }

    
   //  Future<void> enterUID (uid)async {
   //    await FirebaseFirestore.instance
   //        .collection("Users")
   //        .doc(uid)
   //        .collection("testing")
   //        .add({'name': "yfyboi"})
   //        .catchError((e){
   //                  print(e.toString());
   //        });
   //    print(uid);
   //  }
    // Future<void> addName (String name,uid)async {
    //     await FirebaseFirestore.instance
    //         .collection("Users")
    //         .doc(uid)
    //         .set({'name': name})
    //         .catchError((e){
    //             print(e.toString());
    //     });
    // }
    Future<void> addBasicData (Map<String,String> basicInfo) async {
         await FirebaseFirestore.instance
            .collection("Users")
            .doc(uid)
            .collection("Info")
            .add(basicInfo)
            .catchError((e){print(e.toString());
            });
    }
    // Stream<QuerySnapshot> get getName {
    //   return Users.snapshots();
    // }
    // Future<void> getUserName() async{
    //   String name;
    //   try{
    //     FirebaseFirestore.instance
    //         .collection("Users")
    //         .doc(uid)
    //         .snapshots();
    //   } catch (e){
    //     print(e.toString());
    //     return null;
    //   }
    //}
    // getName() async{
    //   return await FirebaseFirestore.instance.collection("Users").doc(uid).snapshots();
    // }
}
