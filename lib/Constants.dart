import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPress;

  Button({required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 2,
      onPressed: onPress,
      height: MediaQuery.of(context).size.height * 0.08,
      color: Color(0xFFF70000),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 15
        ),
      ),
    );
  }
}

