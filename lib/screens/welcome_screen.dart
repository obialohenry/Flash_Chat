import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/app_strings.dart';
import 'package:flutter/scheduler.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/widgets/wigets_utils.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = "WelcomeScreen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    animation = ColorTween(
      begin: Colors.blueGrey,
      end: Colors.white,
    ).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 3.0;
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Row(
              children: <Widget>[
                FlashAnimatedContainer(
                  height: 60.0,
                ),
                FlashChatAnimatedText(),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            DefaultMaterialButton(
              onTap: () => Navigator.pushNamed(context, LoginScreen.id),
              text: 'Log In',
              colour: Colors.lightBlueAccent,
            ),
            DefaultMaterialButton(
              onTap: () => Navigator.pushNamed(context, RegistrationScreen.id),
              text: 'Register',
              colour: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }
}

class FlashChatAnimatedText extends StatelessWidget {
  const FlashChatAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontSize: 45.0,
        fontWeight: FontWeight.w900,
        color: Colors.black,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            'Flash Chat',
          )
        ],
      ),
    );
  }
}
