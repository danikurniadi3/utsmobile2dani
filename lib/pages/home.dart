import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:tugasflutterdani/pages/button.dart';
import 'package:tugasflutterdani/pages/call.dart';
import 'package:tugasflutterdani/pages/date.dart';
import 'package:tugasflutterdani/pages/images.dart';
import 'package:tugasflutterdani/pages/person.dart';
import 'package:tugasflutterdani/pages/personListview.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MainPageState();
}

class _MainPageState extends State<Home> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) => setState(() => _currentIndex = index),
          children: [
            const Button(),
            const personListview(),
            const images(),
            const call(),
            const Date(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: false,
        itemCornerRadius: 5,
        curve: Curves.easeIn,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(_currentIndex);
        },
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.contact_mail),
            title: const Text('Contact'),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.message),
            title: const Text('Message'),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.phone),
            title: const Text('Call'),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.settings),
            title: const Text('Setting'),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
