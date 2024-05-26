import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/commons/widgets/custom_buttom.dart';
import 'package:whatsapp_ui/features/auth/controller/auth_controller.dart';
import 'package:whatsapp_ui/features/auth/screens/login_screen.dart';

class LogOutScreen extends ConsumerWidget {
  const LogOutScreen({super.key});
  static const routeName = '/logout-screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void signOutUser() {
      ref.read(authControllerProvider).signOutUser(context);
      Navigator.pushNamed(context, LoginScreen.routeName);
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
          elevation: 0,
          backgroundColor: backgroundColor,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 650,
            ),
            CustomButton(text: "Sign out", onPressed: signOutUser),
          ],
        ));
  }
}
