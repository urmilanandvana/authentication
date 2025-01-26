import 'package:authentication/component/progress_cmp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  loginWithEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      UserCredential? userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .whenComplete(() async {
        await progressCmp.startLoading(context: context);
      }).catchError((e) async {
        await progressCmp.startLoading(context: context);
      });

      print("------------>userCredential----->${userCredential}");
    } on FirebaseAuthException catch (e) {
      await progressCmp.startLoading(context: context);
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    print("-------------credential------->${credential.appleFullPersonName}");

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}

Auth auth = Auth();
