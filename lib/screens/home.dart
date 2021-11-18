import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitegrate_project/screens/bottom_navigation.dart';
//import 'package:fitegrate_project/screens/dashboard.dart';
//import 'package:fitegrate_project/screens/profile.dart';
import 'package:fitegrate_project/screens/sign_in.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
}
