import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
     final  user = FirebaseAuth.instance.currentUser!;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text('Hi, '+ user.displayName!),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chat,
            ),
            tooltip: "Chat with us",
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: size.height * 0.12,
                width: size.width * 0.95,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'AGE: ',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                            '20 yrs',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(
                            width: size.width * 0.05,
                          ),
                          Text(
                            'GENDER: ',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                            'Female',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //crossAxisAlignment: CrossAxisAlignment.,
                        children: [
                          Text(
                            'WEIGHT: ',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                            '50 kgs',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          Text(
                            'Height: ',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                            '155 cms',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: size.height * 0.28,
                width: size.width * 0.95,
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Dashboard',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 10, 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: size.height * 0.1,
                            width: size.width * 0.35,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, 'PreRequisite');
                                    },
                                    child: Text(
                                      'Cardio',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ))
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: size.height * 0.1,
                            width: size.width * 0.4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, 'SpotJog');
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5),
                                      child: Text(
                                        'Strength & Conditioning',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                        textAlign: TextAlign.center,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Finish the assessment to generate your report',
                      style: TextStyle(color: Colors.black87, fontSize: 15),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height * 0.09,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.black87,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'HealthAssessment');
                        // main();
                        // UserCredential userCredential = await auth.signInAnonymously();
                        // print(userCredential);
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                        
                        child: Text(
                          'Health Assessment', //textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            //fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,
                          //style: kBodyText.copyWith(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: size.height * 0.09,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.black87,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'VideoAssessmentBalance');
                        // main();
                        // UserCredential userCredential = await auth.signInAnonymously();
                        // print(userCredential);
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                        child: Text(
                          'Base Line Fitness Assessment', //textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                          //style: kBodyText.copyWith(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 25, 30, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: size.height * 0.10,
                width: size.width * 0.95,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'BottomNavigation');
                      },
                      child: Text(
                        'Upcoming Sessions',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}