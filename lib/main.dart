import 'package:flutter/material.dart';
import 'package:student_simulator/analysisPage.dart';
import 'package:student_simulator/chatsPage.dart';
import 'package:student_simulator/guidePage.dart';
import 'package:student_simulator/settings.dart';

import 'main/mainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Sumilator',
      home: ButtomBar(),
    );
  }
}

List _pages = [
  MainPage(),
  GuidePage(),
  ChatsPage(),
  AnalysisPage(),
  SettingsPage(),
];
int _currentIndex = 0;

class ButtomBar extends StatefulWidget {
  const ButtomBar({super.key});

  @override
  State<ButtomBar> createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: size.height, child: _pages.elementAt(_currentIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home),
              icon:
                  Icon(Icons.home, color: Theme.of(context).iconTheme.color),
              label: "Главная"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.quiz),
              icon: Icon(
                Icons.quiz,
                color: Theme.of(context).iconTheme.color,
              ),
              label: "Гайды"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.message),
              icon: Icon(Icons.message,
                  color: Theme.of(context).iconTheme.color),
              label: "Чаты"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.analytics),
              icon:
                  Icon(Icons.analytics, color: Theme.of(context).iconTheme.color),
              label: "Статистика"),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.settings),
              icon: Icon(Icons.settings,
                  color: Theme.of(context).iconTheme.color),
              label: "Настройки"),
        ],
        selectedItemColor: Colors.blue,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
