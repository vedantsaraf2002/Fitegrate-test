import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitegrate_project/screens/Getting_started.dart';
import 'package:fitegrate_project/screens/bottom_navigation.dart';
import 'package:fitegrate_project/screens/dashboard.dart';
import 'package:fitegrate_project/screens/sign_in.dart';
import 'package:after_layout/after_layout.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with AfterLayoutMixin<Splash>{
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);
  }

   

  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();

  Widget build(BuildContext context) => Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return GetStarted();
              //  if (_seen) 
              // {
              //    Navigator.of(context).pushReplacement(
              //      new MaterialPageRoute(builder: (context) => new DashBoard()));
              //      } 
                   
              //      else {
              //          await prefs.setBool('seen', true);
              //         Navigator.of(context).pushReplacement(
              //          new MaterialPageRoute(builder: (context) => new GetStarted()));
              //     }
             
            } else if (snapshot.hasError) {
              return Center(child: Text('Something Went Wrong!'));
            } else {
              return SignIn();
            }
          }
          )
          );
  }
//}


// class HomePage extends StatelessWidget {
//   @override
 
// }
