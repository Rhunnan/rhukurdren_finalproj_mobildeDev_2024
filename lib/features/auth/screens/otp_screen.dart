import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';

class OTPScreen extends StatefulWidget {
  static const String routeName = '/otp-screen';
  final String verificationID;
  const OTPScreen({Key? key, required this.verificationID}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Verifying Your Number"),
          elevation: 0,
          backgroundColor: backgroundColor,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text("We have sent an SMS with a code."),
              SizedBox(
                width: size.width,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "- - - - - -",
                      hintStyle: TextStyle(fontSize: 30)),
                ),
              )
            ],
          ),
        ));
  }
}
