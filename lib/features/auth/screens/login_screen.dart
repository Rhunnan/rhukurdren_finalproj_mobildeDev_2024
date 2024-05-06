import "package:country_picker/country_picker.dart";
import "package:flutter/material.dart";
import "package:whatsapp_ui/colors.dart";
import "package:whatsapp_ui/commons/widgets/custom_buttom.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:whatsapp_ui/features/auth/controller/auth_controller.dart";

class LoginScreen extends ConsumerStatefulWidget {
  static const routeName = '/login-screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;

  void pickCountry() {
    showCountryPicker(
        context: context,
        onSelect: (Country _country) {
          setState(() {
            country = _country;
          });
        });
  }

  void sendPhoneNumber() {
    String phoneNumber = phoneController.text.trim();
    if (phoneNumber.isEmpty && country != null) {
      ref.read(authControllerProvider).signInWithPhone(context, phoneNumber);
    }
  }

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Enter your Phone Number"),
          elevation: 0,
          backgroundColor: backgroundColor,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("WhatsApp will need to verify your phone number."),
                const SizedBox(height: 10),
                TextButton(
                    onPressed: pickCountry, child: const Text("Pick Country")),
                const SizedBox(height: 5),
                Row(
                  children: [
                    if (country != null) Text("+${country!.phoneCode}"),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: size.width * 0.7,
                      child: TextField(
                          controller: phoneController,
                          decoration: const InputDecoration(
                            hintText: "phone number",
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.6,
                ),
                SizedBox(
                  width: 90,
                  child: CustomButton(
                    onPressed: () {},
                    text: "Next",
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
