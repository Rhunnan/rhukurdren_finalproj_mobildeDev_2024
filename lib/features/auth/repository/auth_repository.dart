import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/commons/widgets/utils/utils.dart';

class AuthRepository {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  AuthRepository({required this.auth, required this.firestore});

  void singInWithPhone(BuildContext context, String phoneNumber) async {
    try {
      await auth.verifyPhoneNumber(phoneNumber: phoneNumber,
       verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential);
       }, verificationFailed: (e){
        throw Exception(e.message);
       }, codeSent: (String verificationIDd, int? resendToken)async{
        
       }, codeAutoRetrievalTimeout: codeAutoRetrievalTimeout)
    } on FirebaseAuthException catch (e) {
      showSnackbar(context: context, content: e.message!);
    }
  }
}
