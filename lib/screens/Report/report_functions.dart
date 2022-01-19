import 'package:fitegrate_project/screens/Getting_started.dart';
import 'package:flutter/material.dart';

  void BMI(){

    var status;

    var bmi_weight = GetStarted.weight;
    var bmi_weight_number = int.parse(bmi_weight);

    var bmi_height = GetStarted.height;
    var bmi_height_number = int.parse(bmi_height);

    double bmi = ((bmi_weight_number*10000)/(bmi_height_number*bmi_height_number));

    if(bmi<18.5){
      status = "Underweight";
      print(bmi);
      print(status);
    }

    else if(18.5 <= bmi && bmi<=22.9){
      status = "Normal";
      print(bmi);
      print(status);
    }

    else if(23 <= bmi && bmi<=24.9){
      status = "Overweight";
      print(bmi);
      print(status);
    }

    else if(25 <= bmi && bmi<=29.9){
      status = "Pre-obese";
      print(bmi);
      print(status);
    }

    else if(30 <= bmi && bmi<=40){
      status = "Obese 1";
      print(bmi);
      print(status);
    }

    else if(40.1 <= bmi && bmi<=50){
      status = "Obese 2";
      print(bmi);
      print(status);
    }

    else {
      status = "Obese 3";
      print(bmi);
      print(status);
    }

  }

class ReportClass extends StatefulWidget {
  const ReportClass({ Key? key }) : super(key: key);

  @override
  _ReportClassState createState() => _ReportClassState();
}

class _ReportClassState extends State<ReportClass> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        // Text(a.toString()),
        ],
      ),
    );
  }
}

// import 'dart:js';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fitegrate_project/screens/Getting_started.dart';
// import 'package:fitegrate_project/screens/bottom_navigation.dart';
// import 'package:fitegrate_project/screens/dashboard.dart';
// import 'package:fitegrate_project/screens/sign_in.dart';

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// //import 'dashboard.dart';
// int flag=0;

// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: StreamBuilder(
//             stream: FirebaseAuth.instance.authStateChanges(),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return Center(child: CircularProgressIndicator());
//               } else if (snapshot.hasData) {
//                 Future checkGettingStartedSeen(BuildContext context) async {
//                   SharedPreferences prefs =
//                       await SharedPreferences.getInstance();
//                   bool _seen = (prefs.getBool('seen') ?? false);

                

//                   if (_seen) {
//                     flag=1;
//                    // return DashBoard();
//                   } else {
//                     await prefs.setBool('seen', true);
//                     //return GetStarted();
//                   }

                 
//                 }

//                 if(flag==0)
//                   return GetStarted();
//                 else
//                   return DashBoard();
//               } else if (snapshot.hasError) {
//                 return Center(child: Text('Something Went Wrong!'));
//               } else {
//                 return SignIn();
//               }
//             }));
//   }
// }

// // Future<void> checkGettingStartedSeen(BuildContext context) async {
// //   SharedPreferences prefs = await SharedPreferences.getInstance();
// //   bool _seen = (prefs.getBool('seen') ?? false);

// //   if (_seen) {
// //     Navigator.of(context).pushReplacement(
// //         new MaterialPageRoute(builder: (context) => new DashBoard()));
// //   } else {
// //     await prefs.setBool('seen', true);
// //     Navigator.of(context).pushReplacement(
// //         new MaterialPageRoute(builder: (context) => new GetStarted()));
// //   }
// // }