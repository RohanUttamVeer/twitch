// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:twitch/screens/login_screen.dart';
import 'package:twitch/screens/signup_screen.dart';
import 'package:twitch/widgets/custom_buttons.dart';

class OnBoardingScreen extends StatelessWidget {
  static const routeName = '/onBoarding';
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to \nTwitch',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CustomButtons(
                text: 'Log In',
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
              ),
            ),
            CustomButtons(
              text: 'Sign In',
              onTap: () {
                Navigator.pushNamed(context, SignupScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
