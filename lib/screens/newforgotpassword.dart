import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

 final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

class NewForgotPassword extends StatefulWidget {
  const NewForgotPassword({ Key? key }) : super(key: key);

  @override
  _NewForgotPasswordState createState() => _NewForgotPasswordState();
}

class _NewForgotPasswordState extends State<NewForgotPassword> {
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
        //  padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 55),
                Center(child: Image.asset('assets/Logos/confused_man.png', height:  size.height*0.20,  width: size.width*0.80, )),
                 
                  SizedBox(height: 15),
              Center(child: Text('FORGOT PASSWORD?', style: TextStyle(fontSize: 25, color: Colors.black),)),
      
              Column(
                
                children: [
                 // Padding(padding: EdgeInsets.fromLTRB(100, 0, 40, 0)),
                  
                   SizedBox(height: 40),
              Center(child: Text('Enter the email address associated with the account. We will email you a link to reset your password', style: TextStyle(fontSize: 18, color: Colors.black, ) ,)),
      
                 SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  height: size.height * 0.065,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.orange[300],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        
                        border: InputBorder.none,
                        //contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            Icons.email_outlined,
                            size: 28,
                            color: Colors.black87,
                          ),
                        ),
                        hintText: 'Email id',
                        hintStyle: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      //obscureText: _issecure,
                       cursorColor: Colors.black87,
                      textInputAction: TextInputAction.next,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
      
              SizedBox(
                  height: size.height * 0.02,
                ),
      
                Container(
                 height: size.height * 0.065,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.black87,
                  ),
                  child: TextButton(
                    onPressed: () async {
                      resetPassword();
                      Navigator.pushNamed(context, 'SignIn');
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.orange[300], fontSize: 20),
                    ),
                  ),
                ),
              // Center(child: Text('We will email you a link to reset your password', style: TextStyle(fontSize: 13, color: Colors.black),))
      
                ],
              ),
              
            ],
          ),
        ),

      )
      );
 }
}

     
 
resetPassword() async {
    String email = _emailController.text.toString();
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }

  
