import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitegrate_project/provider/google_sign_in.dart';

import 'package:fitegrate_project/screens/home.dart';


import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

bool loginwith = false;

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _issecure=true;
 
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 35, 16, 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image(
                      image: AssetImage('assets/Fitegrate/black_part2.jpeg'),
                      height: 200,
                      width: 221)),
              // SizedBox(height: size.height*0.02,),

              Text(
                'FITEGRATE',
                style: TextStyle(
                    color: Colors.orange[300],
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),

              Container(
                height: size.height * 0.065,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                          Icons.email_outlined,
                          size: 28,
                          color: Colors.black87,
                        ),
                      ),
                      hintText: 'Email Id',

                      hintStyle: TextStyle(
                        color: Colors.orange[300],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
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
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(icon: _issecure ? Icon(Icons.visibility_off) : Icon(Icons.visibility), 
                      onPressed: ()=>
                      {
                        setState((){
                          _issecure=!_issecure;

                        })
                      },),
                      border: InputBorder.none,
                      //contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                          Icons.lock_outline,
                          size: 28,
                          color: Colors.black87,
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          color: Colors.orange[300],
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: _issecure,
                    
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.03,
              ),

              Container(
                height: size.height * 0.065,
                width: size.width * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.orange[400],
                ),
                child: TextButton(
                  onPressed: () async {
                    loginwith = true;
                    {
                      setState(() {
                        _signInWithEmailAndPassword();
                      });
                    }
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.03,
              ),

              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'forgotpassword'),
                child: Container(
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: Colors.blue[600],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),

              Text(
                'Or sign in with',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: size.height * 0.02,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignInButton(
                    Buttons.Google,
                    //mini: true,
                    onPressed: () {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      provider.googleLogin();
                      
                    },
                  ),
                  // SizedBox(
                  //   width: size.height * 0.08,
                  // ),
                  // SignInButton(
                  //   Buttons.Facebook,
                  //   //mini: true,
                  //   onPressed: () {},
                  // ),
                ],
              ),

              //     Container(
              //   height: size.height * 0.065,
              //   width: size.width * 0.6,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(22),
              //     color: Colors.orange[400],
              //   ),
              //   child: TextButton(
              //     onPressed: () {
              //       // Navigator.pushNamed(context, 'BottomNavigation');
              //       final provider =
              //           Provider.of<GoogleSignInProvider>(context, listen: false);
              //           provider.googleLogin();
              //     },
              //     child: Text(
              //       'Sign In with google',
              //       style: TextStyle(color: Colors.white, fontSize: 20),
              //     ),
              //   ),
              // ),

              // SizedBox(
              //   width: size.width * 0.10,
              // ),

              // _buildSocialBtn(
              //   () {
              //     final provider =
              //       Provider.of<GoogleSignInProvider>(context, listen: false);
              //       provider.googleLogin();
              //   },
              //   AssetImage(
              //     'assets/Logos/google.jpg',

              //   ),
              // ),

              SizedBox(
                height: size.height * 0.02,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'SignUp'),
                    child: Container(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.blue[600],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _signInWithEmailAndPassword() async {
    try {
      final User? user = (await _firebaseAuth.signInWithEmailAndPassword(
              email: _emailController.text.trim(),
              password: _passwordController.text.trim()))
          .user;
      if (user != null) {
        setState(() {
          Fluttertoast.showToast(msg: "Signed In Sucessfully");

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        });
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }
}