import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitegrate_project/provider/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        actions: [
          TextButton(
            child: Text('Logout'),
            onPressed: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.logout();
            },
          )
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
            children: [
             
              
               Image.asset('assets/Fitegrate/profile.jpeg', height:  size.height*0.20,  width: size.width,),
             
              SizedBox(height: 8),
              Text(
                 user.displayName!,
                style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                 user.email!,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
               SizedBox(height: 15),
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          //margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                           color: Colors.grey[350],
                          child: Column(
                            
                            children: [
                              Text('Phone Number',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 18),),
                              Text('9876543210',style: TextStyle(color: Colors.black, fontSize: 16),)
                            ],
                          ),
                        ),
      
                        Container(
                          padding: EdgeInsets.all(20),
                           //margin: EdgeInsets.all(10),
                          color: Colors.grey[350],
                          child: Column(
                            children: [
                              Text('Phone Number',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 18),),
                              Text('9876543210',style: TextStyle(color: Colors.black,fontSize: 16),)
                            ],
                          ),
                        ),
                      ],
                    ),
      
                    SizedBox(height: 20,),
      
                    Container(
                      color: Colors.grey[350],
                      height: size.height*0.09,
                      width: size.width,
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.card_membership_outlined, color: Colors.black, size: 40,),
                           SizedBox(width: 10,),
                          Text('Membership Validity', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),

                     SizedBox(height: 20,),

                    Container(
                      color: Colors.grey[350],
                      height: size.height*0.09,
                      width: size.width,
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.call, color: Colors.black, size: 40,),
                           SizedBox(width: 10,),
                          Text('Contact Us', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),

                    SizedBox(height: 20,),

                    Container(
                      color: Colors.grey[350],
                      height: size.height*0.09,
                      width: size.width,
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.announcement_outlined, color: Colors.black, size: 40,),
                           SizedBox(width: 10,),
                          Text('Feedback', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
             
            ],
          ),
      ),
      
    );
  }
}

@override
Widget build(BuildContext context) {
  
  throw UnimplementedError();
}