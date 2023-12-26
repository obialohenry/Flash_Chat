import 'package:flash_chat/app_strings.dart';
import 'package:flash_chat/constants.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/widgets/wigets_utils.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = "RegisterationScreen";
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const FlashAnimatedContainer(height: 200.0),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: KDefaultInputDecoration.copyWith(hintText: "Enter your email"),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: KDefaultInputDecoration.copyWith(hintText: "Enter your password"),
            ),
            const SizedBox(
              height: 24.0,
            ),
            DefaultMaterialButton(
              onTap: () {},
              text: "Register",
              colour: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
