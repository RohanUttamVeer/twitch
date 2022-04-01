import 'package:flutter/material.dart';
import 'package:twitch/screens/feed_screen.dart';
import 'package:twitch/screens/go_live_screen.dart';
import 'package:twitch/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/homescreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 1;
  List<Widget> pages = [
    const FeedScreen(),
    const GoLiveScreen(),
    const Center(
      child: Text('Browse'),
    ),
  ];

  onPageChange(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: buttonColor,
        unselectedItemColor: primaryColor,
        backgroundColor: backgroundColor,
        currentIndex: _page,
        unselectedFontSize: 12,
        onTap: onPageChange,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Following'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_rounded), label: 'Go Live'),
          BottomNavigationBarItem(icon: Icon(Icons.copy), label: 'Browse'),
        ],
      ),
      body: pages[_page],
    );
  }
}
