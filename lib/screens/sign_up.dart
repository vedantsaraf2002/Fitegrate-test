//import 'package:fitegrate_project/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitegrate_project/provider/Database.dart';
import 'package:fitegrate_project/screens/sign_in.dart';
import 'package:fitegrate_project/screens/verify.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.black87,
      ),
      child: TextButton(
        onPressed: () {
          // main();
          // UserCredential userCredential = await auth.signInAnonymously();
          // print(userCredential);
        },
        child: Text(
          buttonName,
          style: TextStyle(color: Colors.orange[300], fontSize: 20),
          //style: kBodyText.copyWith(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
bool _issecure=true; 
bool _issecure2=true;    
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confpasswordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 35, 16, 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: size.height * 0.02,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image(
                    image: AssetImage('assets/Fitegrate/newest_logo.png'),
                    height: 166,
                    width: 147),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),

            

             
            

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
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.emailAddress,
                     cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
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
                  color: Colors.orange[300],
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
                      // contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: _issecure,
                     cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
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
                  color: Colors.orange[300],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: TextField(
                    controller: _confpasswordController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(icon: _issecure2 ? Icon(Icons.visibility_off) : Icon(Icons.visibility), 
                      onPressed: ()=>
                      {
                        setState((){
                          _issecure2=!_issecure2;

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
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: _issecure2,
                    cursorColor: Colors.black,
                    textInputAction: TextInputAction.next,
                  ),
                ),
              ),

              SizedBox(
                height: size.height * 0.03,
              ),

              //RoundedButton(buttonName: 'Sign Up'),
              //RoundedButton(buttonName: 'Sign Up'),
              Container(
                height: size.height * 0.065,
                width: size.width * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.black87,
                ),
                child: TextButton(
                  onPressed: () async {
                    _register();
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.orange[300], fontSize: 20),
                    //style: kBodyText.copyWith(fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'SignIn'),
                    child: Container(
                      child: Text(
                        'Sign In',
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

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _register() async {
    String name = _nameController.text.trim();
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    String confirmpassword = _confpasswordController.text.trim();
    if (password == confirmpassword) {
      try {
        final User? user = (await _auth.createUserWithEmailAndPassword(
                email: email, password: password))
            .user;
           DatabaseService().enterUID(user!.uid);
          print(user.uid);
        setState(() {
          if (user != null) {
            Fluttertoast.showToast(msg: "user created");
           // Navigator.pushNamed(context, 'SignIn');
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => VerifyScreen()),
            );
          }
        });
      } catch (e) {
        Fluttertoast.showToast(msg: e.toString());
      }
    } else {
      Fluttertoast.showToast(msg: "Passwords don't match");
    }
  }
}
