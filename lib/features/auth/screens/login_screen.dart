import "package:flutter/material.dart";
import "package:whatsapp_ui/colors.dart";

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Enter your Phone Number"),
          elevation: 0,
          backgroundColor: backgroundColor,
        ),
        body: Column(
          children: [],
        ));
  }
}
