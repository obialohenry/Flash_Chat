import 'package:flutter/material.dart';
import 'package:flash_chat/app_strings.dart';

class FlashAnimatedContainer extends StatelessWidget {
  const FlashAnimatedContainer({
    super.key,
    required this.height,
  });
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Hero(
        tag: KFlashLogo,
        child: Image.asset(KFlashLogo),
      ),
    );
  }
}
