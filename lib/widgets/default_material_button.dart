import 'package:flutter/material.dart';

class DefaultMaterialButton extends StatelessWidget {
  const DefaultMaterialButton({
    super.key,
    required this.onTap,
    required this.text,
    this.colour,
  });
  final VoidCallback onTap;
  final String text;
  final Color? colour;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onTap,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
