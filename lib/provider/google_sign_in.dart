import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitegrate_project/screens/sign_in.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier{

final googleSignIn = GoogleSignIn();

GoogleSignInAccount? _user;

GoogleSignInAccount get user => _user!;

Future googleLogin() async{
try{
  final googleUser = await googleSignIn.signIn();
  if (googleUser ==  null) return;
  _user = googleUser;

  final googleAuth = await googleUser.authentication;
  final Credential = GoogleAuthProvider.credential(
accessToken: googleAuth.accessToken,
idToken: googleAuth.idToken,
  );
  await FirebaseAuth.instance.signInWithCredential(Credential);
}catch (e){
  print(e.toString());
}
  notifyListeners();
}

Future logout() async{
  
  if (SignIn.isLoginwith==true){
    await FirebaseAuth.instance.signOut();
    
}
if(SignIn.isLoginwith==false){
  
await FirebaseAuth.instance.signOut();
await googleSignIn.disconnect();
  
}
  

  
  

}
}