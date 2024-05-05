import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthRepository {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  AuthRepository({required this.auth, required this.firestore});

  void singInWithPhone(BuildContext context, String phoneNumber) async {
    try {} catch (e) {
      showSnackBar(context);
    }
  }
}
