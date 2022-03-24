import 'package:flutter/material.dart';
import 'package:twitch/utils/colors.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({ Key? key ,required this.text, required this.onTap}) : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        minimumSize: const Size(double.infinity, 40),
      ),
      onPressed: onTap,
      child: Text(text),
    );
  }
}