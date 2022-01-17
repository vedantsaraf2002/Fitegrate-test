import 'package:fitegrate_project/provider/Database.dart';
import 'package:fitegrate_project/screens/bottom_navigation.dart';
import 'package:fitegrate_project/screens/dashboard.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  // final _formKey = GlobalKey<FormState>();
  bool _isloading = false;
  String name='Null',gender= 'Null',age='Null',height='Null',weight='Null',phno='Null';
  

  confirm_details() async{

    // if(_formKey.currentState!.validate()){
      // setState(() {
      //   _isloading=true;
      // });
      Map<String,String> basicinfoMap = {
        "name" : name,
        "age" : age,
        "gender" : gender,
        "height" : height,
        "weight" : weight,
        "ph number" : phno
      };

       await DatabaseService().addBasicData(basicinfoMap).then((value){
        setState(() {
          _isloading = false;
        });
      });

      // await databaseService.addQuestionData(basicinfoMap).then((value){
      //   setState(() {
      //     _isloading = false;
      //   });
      // });
      // Navigator.pushReplacement(context, MaterialPageRoute(
      //       builder: (context) => DashBoard(),
      //     ));

     // Navigator.pushNamed(context, 'Dashboard');

    // }
    // Navigator.pushReplacement(context, MaterialPageRoute(
    //             builder: (context) => MyStatefulWidget(),
    //           ));

    Navigator.pushNamed(context, 'BottomNavigation');

  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Your Details',style: TextStyle(fontSize: 30,color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
       // brightness: Brightness.light,
      ),
      body: _isloading ? Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ) :Center(
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: size.height * 0.065,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(children: [
                    Container(
                      padding: EdgeInsets.only(left: 30,top: 10),
                      height: size.height * 0.065,
                      width: size.width *0.4,
                      child: Text('Name',style: TextStyle(fontSize: 25),),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 200),
                      height: size.height * 0.065,
                      width: size.width * 0.8,
                      child: TextFormField(
                        validator: (value) => value!.isEmpty ? "Enter the name" : null,
                        style: TextStyle(fontSize: 25),
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                          print(name);
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          //contentPadding:  EdgeInsets.only(left: 200,top: 10),
                        ),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                  ],),
                ),
                SizedBox(height: 40),
                Container(
                  height: size.height * 0.065,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(children: [
                    Container(
                      padding: EdgeInsets.only(left: 30,top: 10),
                      height: size.height * 0.065,
                      width: size.width *0.4,
                      child: Text('Age(yr)',style: TextStyle(fontSize: 25),),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 200),
                      height: size.height * 0.065,
                      width: size.width * 0.8,
                      child: TextFormField(
                        validator: (value) => value!.isEmpty ? "Enter the age" : null,
                        style: TextStyle(fontSize: 25),
                      onChanged: (value) {
                        setState(() {
                          age = value;
                        });
                        print(age);
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        //contentPadding:  EdgeInsets.only(left: 200,top: 10),
                      ),
                      keyboardType: TextInputType.name,
                       cursorColor: Colors.black,
                      textInputAction: TextInputAction.next,
                    ),
                    ),
                  ],),
                ),
                SizedBox(height: 40),
                Container(
                  height: size.height * 0.065,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(children: [
                    Container(
                      padding: EdgeInsets.only(left: 30,top: 10),
                      height: size.height * 0.065,
                      width: size.width *0.8,
                      child: Text('Gender  ',style: TextStyle(fontSize: 25),),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 200),
                      height: size.height * 0.065,
                      width: size.width * 0.8,
                      child: TextFormField(
                        validator: (value) => value!.isEmpty ? "Enter the Gender" : null,
                        style: TextStyle(fontSize: 25),
                      onChanged: (value) {
                        setState(() {
                          gender = value;
                        });
                        print(gender);
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        //contentPadding:  EdgeInsets.only(left: 200,top: 10),
                      ),
                      keyboardType: TextInputType.name,
                       cursorColor: Colors.black,
                      textInputAction: TextInputAction.next,
                    ),
                    ),
                  ],),
                ),
                SizedBox(height: 40),
                Container(
                  height: size.height * 0.065,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(children: [
                    Container(
                      padding: EdgeInsets.only(left: 30,top: 10),
                      height: size.height * 0.065,
                      width: size.width *0.4,
                      child: Text('Height(cm)',style: TextStyle(fontSize: 25),),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 200),
                      height: size.height * 0.065,
                      width: size.width * 0.8,
                      child: TextFormField(
                        validator: (value) => value!.isEmpty ? "Enter the height" : null,
                        style: TextStyle(fontSize: 25),
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                        print(height);
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        //contentPadding:  EdgeInsets.only(left: 200,top: 10),
                      ),
                      keyboardType: TextInputType.name,
                       cursorColor: Colors.black,
                      textInputAction: TextInputAction.next,
                    ),
                    ),
                  ],),
                ),
                SizedBox(height: 40),
                Container(
                  height: size.height * 0.065,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(children: [
                    Container(
                      padding: EdgeInsets.only(left: 30,top: 10),
                      height: size.height * 0.065,
                      width: size.width *0.4,
                      child: Text('Weight(kg)',style: TextStyle(fontSize: 25),),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 200),
                      height: size.height * 0.065,
                      width: size.width * 0.8,
                      child: TextFormField(
                        validator: (value) => value!.isEmpty ? "Enter the weight" : null,
                        style: TextStyle(fontSize: 25),
                      onChanged: (value) {
                        setState(() {
                          weight = value;
                        });
                        print(weight);
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        //contentPadding:  EdgeInsets.only(left: 200,top: 10),
                      ),
                      keyboardType: TextInputType.name,
                       cursorColor: Colors.black,
                      textInputAction: TextInputAction.next,
                    ),
                    ),
                  ],),
                ),
                SizedBox(height: 40),
                Container(
                  height: size.height * 0.065,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Stack(children: [
                    Container(
                      padding: EdgeInsets.only(left: 30,top: 10),
                      height: size.height * 0.065,
                      width: size.width *0.4,
                      child: Text('Ph Number',style: TextStyle(fontSize: 25),),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 180),
                      height: size.height * 0.065,
                      width: size.width * 0.8,
                      child: TextFormField(
                        validator: (value) => value!.isEmpty ? "Enter the Phone number" : null,
                        style: TextStyle(fontSize: 25),
                      onChanged: (value) {
                        setState(() {
                          phno = value;
                        });
                        print(phno);
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        //contentPadding:  EdgeInsets.only(left: 200,top: 10),
                      ),
                      keyboardType: TextInputType.name,
                      cursorColor: Colors.black,
                      textInputAction: TextInputAction.next,
                      ),
                    ),
                  ],),
                ),
                SizedBox(height: 60),
                Container(
                  height: size.height * 0.065,
                  width: size.width * 0.6,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.orange[300],
                  ),
                  child: TextButton(
                    onPressed: () {
                      confirm_details();
                      
                    },
                  child: Text(
                    'Confirm Details',
                    style: TextStyle(color: Colors.black87, fontSize: 20),
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
