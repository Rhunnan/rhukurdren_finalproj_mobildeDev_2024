import 'package:flutter/material.dart';

class UserInformationScreen extends StatelessWidget {
  static const routeName = "/user-information";
  const UserInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  ),
                  radius: 64,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_a_photo,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
