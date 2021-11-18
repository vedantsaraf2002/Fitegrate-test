import 'package:fitegrate_project/screens/dashboard.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  final _formKey = GlobalKey<FormState>();
  //int age=0,height=0,weight=0;
  //Long phno;
  String gender= 'pnts',age='Null',height='Null',weight='Null',phno='Null';
  
  confirm_details() async{
    if(_formKey.currentState!.validate()){
      setState(() {
        
      });
      Map<String,String> basicinfoMap = {
        "age" : age,
        "gender" : gender,
        "height" : height,
        "weight" : weight,
        "ph number" : phno
      };
      // await databaseService.addQuestionData(basicinfoMap).then((value){
      //   setState(() {
      //     _isloading = false;
      //   });
      // });
      Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => DashBoard(),
          ));
    }
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
      body: Center(
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
                        age = value;
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
                        gender = value;
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
                        height = value;
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
                        weight = value;
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
                        phno = value;
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
