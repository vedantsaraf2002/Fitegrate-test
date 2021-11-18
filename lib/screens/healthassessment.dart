import 'dart:ui';

import 'package:flutter/material.dart';

bool isVisibleBackProblem = false;
bool isVisibleCancer = false;
bool isVisibleHeartIssue = false;
bool isVisibleBloodPressure = false;
bool isVisibleMetabolicConditions = false;
bool isVisibleMentalHealth = false;
bool isVisibleRespiratoryDisease = false;
bool isVisibleSpinalCord = false;
bool isVisibleStroke = false;
bool isVisibleOtherMedicalConditions = false;

class HealthAssessment extends StatefulWidget {
  const HealthAssessment({Key? key}) : super(key: key);

  @override
  _HealthAssessmentState createState() => _HealthAssessmentState();
}

class _HealthAssessmentState extends State<HealthAssessment> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        title: Text(
          'Health Assessment',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1)    Do you have Arthritis, Osteoporosis, or Back Problems?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisibleBackProblem =
                                          !isVisibleBackProblem;
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          // Container(
          //   child: Column(children: [Text('Check', style: TextStyle(color: Colors.black87),)],),
          // ),

          Visibility(
            visible: isVisibleBackProblem,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.5,
                            child: Text(
                              'Difficulty in controlling your condition with medications or other physician-prescribed therapies?',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[300],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black87,
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //   height: size.height * 0.15,
                      // width: size.width * 0.95,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: size.width * 0.5,
                                  child: Text(
                                    'Do you have joint problems causing pain, a recent fracture or fracture caused by osteoporosis or cancer,  displaced vertebra (e.g., spondylolisthesis), and/or spondylolysis/pars defect (a crack in the bony ring on the back of the spinal column)?',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.orange[300],
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {});
                                        },
                                        child: Text(
                                          'Yes',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.black87,
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'No',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.black87,
                            height: 20,
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Container(
                            //  margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            //   height: size.height * 0.15,
                            // width: size.width * 0.95,
                            child: Column(children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: size.width * 0.5,
                                      child: Text(
                                        'Have you had steroid injections or taken steroid tablets regularly for more than 3 months',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.orange[300],
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {});
                                            },
                                            child: Text(
                                              'Yes',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.02,
                                        ),
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.black87,
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'No',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // paaaaaaaaaaaaaaaaaaartttttttttt 2222222222222222222222222222222222222222

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '2)    Do you currently have Cancer of any kind?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisibleCancer = !isVisibleCancer;
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleCancer,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.5,
                            child: Text(
                              'Does your cancer diagnosis include any of the following types: lung/bronchogenic, multiple myeloma (cancer of plasma cells), head, and/or neck?',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[300],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black87,
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //   height: size.height * 0.15,
                      // width: size.width * 0.95,
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: size.width * 0.5,
                                child: Text(
                                  'Are you currently receiving cancer therapy (such as chemotheraphy or radiotherapy)?',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.orange[300],
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.black87,
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ),

///////////////// parttttttttttttttttt 33333333333333333333333 beginsssssssssssss
          ///

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '3)    Do you have a Heart or Cardiovascular Condition? This includes Coronary Artery Disease, Heart Failure, Diagnosed Abnormality of Heart Rhythm?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisibleHeartIssue =
                                          !isVisibleHeartIssue;
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleHeartIssue,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width * 0.5,
                          child: Text(
                            'Difficulty in controlling your condition with medications or other physician-prescribed therapies?',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.orange[300],
                              ),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.black87,
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black87,
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    //  margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    //   height: size.height * 0.15,
                    // width: size.width * 0.95,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: size.width * 0.5,
                                child: Text(
                                  'Irregular heart beat that requires medical management',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.orange[300],
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.black87,
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.black87,
                          height: 20,
                          thickness: 2,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Container(
                          //  margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          //   height: size.height * 0.15,
                          // width: size.width * 0.95,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: size.width * 0.5,
                                      child: Text(
                                        'Do you have chronic heart failure',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.orange[300],
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {});
                                            },
                                            child: Text(
                                              'Yes',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.02,
                                        ),
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.black87,
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'No',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Colors.black87,
                                height: 20,
                                thickness: 2,
                                indent: 20,
                                endIndent: 20,
                              ),
                              Container(
                                //  margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                //   height: size.height * 0.15,
                                // width: size.width * 0.95,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: size.width * 0.5,
                                            child: Text(
                                              'Have you participated in regular physical activity for past 2 months because of heart condition?',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.05,
                                                width: size.width * 0.3,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(22),
                                                  color: Colors.orange[300],
                                                ),
                                                child: TextButton(
                                                  onPressed: () {
                                                    setState(() {});
                                                  },
                                                  child: Text(
                                                    'Yes',
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              Container(
                                                height: size.height * 0.05,
                                                width: size.width * 0.3,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(22),
                                                  color: Colors.black87,
                                                ),
                                                child: TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'No',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                    //        const Divider(

                                    //    color: Colors.black87,
                                    //    height: 20,
                                    //    thickness: 2,
                                    //    indent: 20,
                                    //    endIndent: 20,
                                    //  ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),

          // part 4 beginssssssssssssssssssssssssssssss

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '4)    Do you currently have High Blood Pressure? ',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisibleBloodPressure =
                                          !isVisibleBloodPressure;
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleBloodPressure,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.5,
                            child: Text(
                              'Do you have difficulty controlling your condition with medications or other physician-prescribed therapies?',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[300],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black87,
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //   height: size.height * 0.15,
                      // width: size.width * 0.95,
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: size.width * 0.5,
                                child: Text(
                                  'Do you have a resting blood pressure equal to or greater than 160/90 mmHg with or without medication?',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.orange[300],
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.black87,
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // part 5 beginsssssssssssssssssssssssssssssss
          //

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '5)    Do you have any Metabolic Conditions? This includes Type 1 Diabetes, Type 2 Diabetes, Pre-Diabetes?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisibleMetabolicConditions =
                                          !isVisibleMetabolicConditions;
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleMetabolicConditions,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width * 0.5,
                          child: Text(
                            'Do you often have difficulty controlling your blood sugar levels with foods, medications, or other physician- prescribed therapies?',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.orange[300],
                              ),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.black87,
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black87,
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    //  margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    //   height: size.height * 0.15,
                    // width: size.width * 0.95,
                    child: Column(children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: size.width * 0.5,
                              child: Text(
                                'Do you often suffer from signs and symptoms of low blood sugar (hypoglycemia) following exercise and/or  during activities of daily living? Signs of hypoglycemia may include shakiness, nervousness, unusual irritability, abnormal sweating, dizziness or light-headedness, mental confusion, difficulty in speaking, weakness, or sleepiness',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: size.height * 0.05,
                                  width: size.width * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: Colors.orange[300],
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      setState(() {});
                                    },
                                    child: Text(
                                      'Yes',
                                      style: TextStyle(
                                          color: Colors.black87, fontSize: 18),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Container(
                                  height: size.height * 0.05,
                                  width: size.width * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: Colors.black87,
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'No',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.black87,
                        height: 20,
                        thickness: 2,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Container(
                        //  margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        //   height: size.height * 0.15,
                        // width: size.width * 0.95,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: size.width * 0.5,
                                    child: Text(
                                      'Do you have any signs or symptoms of diabetes complications such as heart or vascular disease and/or  complications affecting your eyes, kidneys, or the sensation in your toes and feet?',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.3,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22),
                                          color: Colors.orange[300],
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            setState(() {});
                                          },
                                          child: Text(
                                            'Yes',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.3,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22),
                                          color: Colors.black87,
                                        ),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'No',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Divider(
                              color: Colors.black87,
                              height: 20,
                              thickness: 2,
                              indent: 20,
                              endIndent: 20,
                            ),
                            Container(
                              //  margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              //   height: size.height * 0.15,
                              // width: size.width * 0.95,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: size.width * 0.5,
                                          child: Text(
                                            'Do you have other metabolic conditions (such as current pregnancy-related diabetes, chronic kidney disease, or liver problems)?',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: size.height * 0.05,
                                              width: size.width * 0.3,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(22),
                                                color: Colors.orange[300],
                                              ),
                                              child: TextButton(
                                                onPressed: () {
                                                  setState(() {});
                                                },
                                                child: Text(
                                                  'Yes',
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: size.height * 0.02,
                                            ),
                                            Container(
                                              height: size.height * 0.05,
                                              width: size.width * 0.3,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(22),
                                                color: Colors.black87,
                                              ),
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'No',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    color: Colors.black87,
                                    height: 20,
                                    thickness: 2,
                                    indent: 20,
                                    endIndent: 20,
                                  ),
                                  Container(
                                    //  margin: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    //   height: size.height * 0.15,
                                    // width: size.width * 0.95,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                width: size.width * 0.5,
                                                child: Text(
                                                  'Are you planning to engage in what for you is unusually high (or vigorous) intensity exercise in the near future?',
                                                  style: TextStyle(
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: size.height * 0.05,
                                                    width: size.width * 0.3,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22),
                                                      color: Colors.orange[300],
                                                    ),
                                                    child: TextButton(
                                                      onPressed: () {
                                                        setState(() {});
                                                      },
                                                      child: Text(
                                                        'Yes',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black87,
                                                            fontSize: 18),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: size.height * 0.02,
                                                  ),
                                                  Container(
                                                    height: size.height * 0.05,
                                                    width: size.width * 0.3,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22),
                                                      color: Colors.black87,
                                                    ),
                                                    child: TextButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'No',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 18),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),

                                        //        const Divider(

                                        //    color: Colors.black87,
                                        //    height: 20,
                                        //    thickness: 2,
                                        //    indent: 20,
                                        //    endIndent: 20,
                                        //  ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ]),
              ),
            ),
          ),

// part 6 beginssssssssssssssssssssssss

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '6)    Are you pregnant',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          // part 7 beginssssssssssssssssssssssss

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '7)    Do you have any Mental Health Problems or Learning Difficulties?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisibleMentalHealth =
                                          !isVisibleMentalHealth;
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleMentalHealth,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.5,
                            child: Text(
                              'Do you have difficulty in controlling your condition with medications or other physician-prescribed therapies?',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[300],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black87,
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //   height: size.height * 0.15,
                      // width: size.width * 0.95,
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: size.width * 0.5,
                                child: Text(
                                  'Do you have Down Syndrome and back problems affecting nerves or muscles?',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.orange[300],
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.black87,
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ),

// part 8 beginsssssssssssssssssssssssssssssssssssssssssss

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '8)    Do you have a Respiratory Disease?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisibleRespiratoryDisease =
                                          !isVisibleRespiratoryDisease;
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleRespiratoryDisease,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width * 0.5,
                          child: Text(
                            'Difficulty in controlling your condition with medications or other physician-prescribed therapies?',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.orange[300],
                              ),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            Container(
                              height: size.height * 0.05,
                              width: size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: Colors.black87,
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black87,
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    //  margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    //   height: size.height * 0.15,
                    // width: size.width * 0.95,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: size.width * 0.5,
                                child: Text(
                                  'Has your doctor ever said your blood oxygen level is low at rest or during exercise and/or that you require supplemental oxygen therapy?',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.orange[300],
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Colors.black87,
                                    ),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.black87,
                          height: 20,
                          thickness: 2,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Container(
                          //  margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          //   height: size.height * 0.15,
                          // width: size.width * 0.95,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: size.width * 0.5,
                                      child: Text(
                                        'If asthmatic, do you currently have symptoms of chest tightness, wheezing, laboured breathing, consistent cough  (more than 2 days/week), or have you used your rescue medication more than twice in the last week?',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.orange[300],
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {});
                                            },
                                            child: Text(
                                              'Yes',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.02,
                                        ),
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.black87,
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'No',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Colors.black87,
                                height: 20,
                                thickness: 2,
                                indent: 20,
                                endIndent: 20,
                              ),
                              Container(
                                //  margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                //   height: size.height * 0.15,
                                // width: size.width * 0.95,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: size.width * 0.5,
                                            child: Text(
                                              'Has your doctor ever said you have high blood pressure in the blood vessels of your lungs?',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: size.height * 0.05,
                                                width: size.width * 0.3,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(22),
                                                  color: Colors.orange[300],
                                                ),
                                                child: TextButton(
                                                  onPressed: () {
                                                    setState(() {});
                                                  },
                                                  child: Text(
                                                    'Yes',
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              Container(
                                                height: size.height * 0.05,
                                                width: size.width * 0.3,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(22),
                                                  color: Colors.black87,
                                                ),
                                                child: TextButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'No',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),

          // part 9 beginsssssssssssssssssssssssssssssssssss

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '9)    Do you have a Spinal Cord Injury?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisibleSpinalCord =
                                          !isVisibleSpinalCord;
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleSpinalCord,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.5,
                            child: Text(
                              'Difficulty in controlling your condition with medications or other physician-prescribed therapies?',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[300],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black87,
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //   height: size.height * 0.15,
                      // width: size.width * 0.95,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: size.width * 0.5,
                                  child: Text(
                                    'Do you commonly exhibit low resting blood pressure significant enough to cause dizziness, light-headedness, and/or fainting?',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.orange[300],
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {});
                                        },
                                        child: Text(
                                          'Yes',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.black87,
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'No',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.black87,
                            height: 20,
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Container(
                            //  margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            //   height: size.height * 0.15,
                            // width: size.width * 0.95,
                            child: Column(children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: size.width * 0.5,
                                      child: Text(
                                        'Has your physician indicated that you exhibit sudden bouts of high blood pressure (known as Autonomic Dysreflexia)?',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.orange[300],
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {});
                                            },
                                            child: Text(
                                              'Yes',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.02,
                                        ),
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.black87,
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'No',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

//part 10 beginssssssssssssssssssssssssssssssssssssssssssssssssssssssss

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '10)    Have you had a Stroke?',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisibleStroke = !isVisibleStroke;
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleStroke,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.5,
                            child: Text(
                              'Difficulty in controlling your condition with medications or other physician-prescribed therapies?',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[300],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black87,
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //   height: size.height * 0.15,
                      // width: size.width * 0.95,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: size.width * 0.5,
                                  child: Text(
                                    'Do you have any impairment in walking or mobility?',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.orange[300],
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {});
                                        },
                                        child: Text(
                                          'Yes',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.black87,
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'No',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.black87,
                            height: 20,
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Container(
                            //  margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            //   height: size.height * 0.15,
                            // width: size.width * 0.95,
                            child: Column(children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: size.width * 0.5,
                                      child: Text(
                                        'Have you experienced a stroke or impairment in nerves or muscles in the past 6 months?',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.orange[300],
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {});
                                            },
                                            child: Text(
                                              'Yes',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.02,
                                        ),
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.black87,
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'No',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

// part 11 beginsssssssssssssssssssssssssssssssssssssssssss

          Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 15, 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                // height: size.height * 0.15,
                // width: size.width * 0.95,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '11)    Do you have any other medical condition not listed above or do you have two or more medical conditions? ',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: size.height * 0.009,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[400],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisibleOtherMedicalConditions =
                                          !isVisibleOtherMedicalConditions;
                                    });
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              )),

          Visibility(
            visible: isVisibleOtherMedicalConditions,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 15, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width * 0.5,
                            child: Text(
                              'Have you experienced a blackout, fainted, or lost consciousness as a result of a head injury within the last 12 months or have you had a diagnosed concussion within the last 12 months?',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.orange[300],
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {});
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 18),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.black87,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.black87,
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Container(
                      //  margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      //   height: size.height * 0.15,
                      // width: size.width * 0.95,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: size.width * 0.5,
                                  child: Text(
                                    'Do you have a medical condition that is not listed (such as epilepsy, neurological conditions, kidney problems)?',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.orange[300],
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {});
                                        },
                                        child: Text(
                                          'Yes',
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        color: Colors.black87,
                                      ),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'No',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.black87,
                            height: 20,
                            thickness: 2,
                            indent: 20,
                            endIndent: 20,
                          ),
                          Container(
                            //  margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            //   height: size.height * 0.15,
                            // width: size.width * 0.95,
                            child: Column(children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: size.width * 0.5,
                                      child: Text(
                                        'Do you currently live with two or more medical conditions',
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.orange[300],
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              setState(() {});
                                            },
                                            child: Text(
                                              'Yes',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.02,
                                        ),
                                        Container(
                                          height: size.height * 0.05,
                                          width: size.width * 0.3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.black87,
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'No',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
