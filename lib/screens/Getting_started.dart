import 'package:fitegrate_project/provider/Database.dart';
import 'package:fitegrate_project/screens/bottom_navigation.dart';
import 'package:fitegrate_project/screens/dashboard.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);
  static String name = 'Null',
      gender = 'Null',
      age = 'Null',
      height = 'Null',
      weight = 'Null',
      phno = 'Null';

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  // final _formKey = GlobalKey<FormState>();
  bool _isloading = false;
  //static String name='Null',gender= 'Null',age='Null',height='Null',weight='Null',phno='Null';

  confirm_details() async {
    Map<String, String> basicinfoMap = {
      "name": GetStarted.name,
      "age": GetStarted.age,
      "gender": GetStarted.gender,
      "height": GetStarted.height,
      "weight": GetStarted.weight,
      "ph number": GetStarted.phno
    };

    await DatabaseService().addBasicData(basicinfoMap).then((value) {
      setState(() {
        _isloading = false;
      });
    });

    Navigator.pushNamed(context, 'BottomNavigation');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Enter Your Details',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        // brightness: Brightness.light,
      ),
      body: _isloading
          ? Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Center(
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: size.height * 0.065,
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.orange[300],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 30, top: 10),
                              height: size.height * 0.065,
                              width: size.width * 0.4,
                              child: Text(
                                'Name',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 155),
                              height: size.height * 0.065,
                              width: size.width * 0.8,
                              child: TextFormField(
                                validator: (value) =>
                                    value!.isEmpty ? "Enter your name" : null,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                onChanged: (value) {
                                  setState(() {
                                    GetStarted.name = value;
                                  });
                                  print(GetStarted.name);
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  //contentPadding:  EdgeInsets.only(left: 200,top: 10),
                                ),
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        height: size.height * 0.065,
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.orange[300],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 30, top: 10),
                              height: size.height * 0.065,
                              width: size.width * 0.4,
                              child: Text(
                                'Age',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 155),
                              height: size.height * 0.065,
                              width: size.width * 0.8,
                              child: TextFormField(
                                validator: (value) =>
                                    value!.isEmpty ? "Enter your age" : null,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                onChanged: (value) {
                                  setState(() {
                                    GetStarted.age = value;
                                  });
                                  print(GetStarted.age);
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  //contentPadding:  EdgeInsets.only(left: 200,top: 10),
                                ),
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        height: size.height * 0.065,
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.orange[300],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 30, top: 10),
                              height: size.height * 0.065,
                              width: size.width * 0.4,
                              child: Text(
                                'Gender',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 155),
                              height: size.height * 0.065,
                              width: size.width * 0.8,
                              child: TextFormField(
                                validator: (value) =>
                                    value!.isEmpty ? "Enter your gender" : null,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                onChanged: (value) {
                                  setState(() {
                                    GetStarted.gender = value;
                                  });
                                  print(GetStarted.gender);
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  //contentPadding:  EdgeInsets.only(left: 200,top: 10),
                                ),
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        height: size.height * 0.065,
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.orange[300],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 30, top: 10),
                              height: size.height * 0.065,
                              width: size.width * 0.4,
                              child: Text(
                                'Height(cm)',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 155),
                              height: size.height * 0.065,
                              width: size.width * 0.8,
                              child: TextFormField(
                                validator: (value) =>
                                    value!.isEmpty ? "Enter your height" : null,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                onChanged: (value) {
                                  setState(() {
                                    GetStarted.height = value;
                                  });
                                  print(GetStarted.height);
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  //contentPadding:  EdgeInsets.only(left: 200,top: 10),
                                ),
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        height: size.height * 0.065,
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.orange[300],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 30, top: 10),
                              height: size.height * 0.065,
                              width: size.width * 0.4,
                              child: Text(
                                'Weight(kg)',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 155),
                              height: size.height * 0.065,
                              width: size.width * 0.8,
                              child: TextFormField(
                                validator: (value) =>
                                    value!.isEmpty ? "Enter your weight" : null,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                onChanged: (value) {
                                  setState(() {
                                    GetStarted.weight = value;
                                  });
                                  print(GetStarted.weight);
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  //contentPadding:  EdgeInsets.only(left: 200,top: 10),
                                ),
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        height: size.height * 0.065,
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.orange[300],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 30, top: 10),
                              height: size.height * 0.065,
                              width: size.width * 0.4,
                              child: Text(
                                'Ph number',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 155),
                              height: size.height * 0.065,
                              width: size.width * 0.8,
                              child: TextFormField(
                                validator: (value) => value!.isEmpty
                                    ? "Enter your phone number"
                                    : null,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                                onChanged: (value) {
                                  setState(() {
                                    GetStarted.phno = value;
                                  });
                                  print(GetStarted.phno);
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  //contentPadding:  EdgeInsets.only(left: 200,top: 10),
                                ),
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        height: size.height * 0.065,
                        width: size.width * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Colors.black54,
                        ),
                        child: TextButton(
                          onPressed: () {
                            confirm_details();
                          },
                          child: Text(
                            'Confirm Details',
                            style: TextStyle(
                                color: Colors.orange[300], fontSize: 20),
                            //style: kBodyText.copyWith(fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}