import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitegrate_project/screens/Getting_started.dart';
import 'package:fitegrate_project/screens/bottom_navigation.dart';
import 'package:fitegrate_project/screens/dashboard.dart';
import 'package:fitegrate_project/screens/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
// @override
//     Widget build(BuildContext context){
//         return FutureBuilder<FirebaseUser>(
//           future: FirebaseAuth.instance.currentUser!,
//             // future: FirebaseAuth.instance.currentUser(),
//             builder: (BuildContext context, AsyncSnapshot<FirebaseUser> snapshot){
//                        if (snapshot.hasData){
//                            FirebaseUser user = snapshot.data; // this is your user instance
//                            /// is because there is user already logged
//                            return MainScreen();
//                         }
//                          /// other way there is no user logged.
//                          return LoginScreen();
//              }
//           );
//     }

  int flag = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return MyStatefulWidget();
            } else if (snapshot.hasError) {
              return Center(child: Text('Something Went Wrong!'));
            } else {
              return SignIn();
            }
          }));

  // @override
  // Widget build(BuildContext context) => Scaffold(
  //     body: StreamBuilder(
  //       stream: FirebaseAuth.instance.authStateChanges(),
  //         builder: (context, snapshot) {
  //           if (snapshot.connectionState == ConnectionState.waiting) {
  //             return Center(child: CircularProgressIndicator());
  //           } else if (snapshot.hasData) {
  //             return GetStarted();
  //           } else if (snapshot.hasError) {
  //             return Center(child: Text('Something Went Wrong!'));
  //           } else {
  //             return SignIn();
  //           }
  //         }));
}
