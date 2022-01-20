import 'dart:core';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitegrate_project/provider/google_sign_in.dart';
import 'package:fitegrate_project/screens/Getting_started.dart';
import 'package:fitegrate_project/screens/VideoAssessment/PushuUp.dart';
import 'package:fitegrate_project/screens/VideoAssessment/balance.dart';
import 'package:fitegrate_project/screens/VideoAssessment/partialCurlUp.dart';
import 'package:fitegrate_project/screens/VideoAssessment/runTest.dart';
import 'package:fitegrate_project/screens/VideoAssessment/sitAndReach.dart';
import 'package:fitegrate_project/screens/bottom_navigation.dart';
import 'package:fitegrate_project/screens/dashboard.dart';
import 'package:fitegrate_project/screens/healthassessment.dart';
import 'package:fitegrate_project/screens/home.dart';
import 'package:fitegrate_project/screens/newforgotpassword.dart';
import 'package:fitegrate_project/screens/pre-requisite.dart';
import 'package:fitegrate_project/screens/report.dart';
import 'package:fitegrate_project/screens/sign_up.dart';
import 'package:fitegrate_project/screens/warmup/IYTactivation.dart';
import 'package:fitegrate_project/screens/warmup/WalkHipRotation.dart';
import 'package:fitegrate_project/screens/warmup/ankleCircle.dart';
import 'package:fitegrate_project/screens/warmup/crossToeTouch.dart';
import 'package:fitegrate_project/screens/warmup/donkeyKick.dart';
import 'package:fitegrate_project/screens/warmup/fullArm.dart';
import 'package:fitegrate_project/screens/warmup/hipCircle.dart';
import 'package:fitegrate_project/screens/warmup/legRaise.dart';
import 'package:fitegrate_project/screens/warmup/shoulderRotate.dart';
import 'package:fitegrate_project/screens/warmup/spotjog.dart';
import 'package:fitegrate_project/screens/warmup/walkKneeHugs.dart';
import 'package:flutter/material.dart';
import 'package:fitegrate_project/screens/sign_in.dart';
import 'package:provider/provider.dart'; 

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)=>ChangeNotifierProvider(
    create:(context) => GoogleSignInProvider(),
    child: MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      

      theme: ThemeData.light(),
      darkTheme:
          ThemeData.dark(), // standard dark theme // device controls theme
    
    initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'SignIn': (context) => SignIn(),
        'SignUp': (context) => SignUp(),
        'Getting_Started': (context) => GetStarted(),
        'Dashboard':(context) => DashBoard(),
        'BottomNavigation':(context) => MyStatefulWidget(),
        
         'newforgotpassword':(context) => NewForgotPassword(),
        'HealthAssessment':(context) => HealthAssessment(),
        'PreRequisite':(context) => PreRequisite(),
        'SpotJog':(context) => SpotJog(),
        'CrossToeTouch':(context) => CrossToeTouch(),
        'VideoAssessmentBalance':(context) => VideoAssessmentBalance(),
        'ShoulderRotation':(context) => ShoulderRotation(),
        'FullArmCircles':(context) => FullArmCircles(),
        'HipCircle':(context) => HipCircle(),
        'AnkleCircle':(context) => AnkleCircle(),
        'IYTActivation':(context) => IYTActivation(),
        'WalkingKneeHugs':(context) => WalkingKneeHugs(),
        'WalkingHip':(context) => WalkingHip(),
        'LegRaise':(context) => LegRaise(),
        'DonkeyKicks':(context) => DonkeyKicks(),
        'VideoAssessmentPartialCurlUp':(context) => VideoAssessmentPartialCurlUp(),
        'VideoAssessmentSitAndReach':(context) => VideoAssessmentSitAndReach(),
        'VideoAssessmentPushUp':(context) => VideoAssessmentPushUp(),
        'VideoAssessmentRunTest':(context) => VideoAssessmentRunTest(),
        'Report':(context) => Report(),

      },
      ),
      ); 
    
}




      
