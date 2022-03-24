import 'package:flutter/material.dart';
import 'package:twitch/screens/login_screen.dart';
import 'package:twitch/screens/onboarding_screen.dart';
import 'package:twitch/screens/signup_screen.dart';
import 'package:twitch/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitch',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: backgroundColor,
          elevation: 0,
          titleTextStyle: const TextStyle(
            color: primaryColor,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: primaryColor,
          ),
        ),
      ),
      routes: {
        OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        SignupScreen.routeName: (context) => const SignupScreen(),
      },
      home: const OnBoardingScreen(),
    );
  }
}
