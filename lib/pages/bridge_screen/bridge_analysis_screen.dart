import 'package:dummy_template/pages/alert_screen/alert_screen.dart';
import 'package:dummy_template/pages/analysis_screen/analysis_screen.dart';
import 'package:dummy_template/pages/home_screen/home_screen.dart';
import 'package:dummy_template/pages/profile_screen/profile_screen.dart';
import 'package:dummy_template/pages/bridge_screen/bridge_setting_screen.dart';
import 'package:dummy_template/values/colors.dart';
import 'package:flutter/material.dart';

class BridgeAnalysisScreen extends StatefulWidget {
  const BridgeAnalysisScreen({super.key});

  set curentIndex(int curentIndex) {}

  @override
  State<BridgeAnalysisScreen> createState() => _BridgeAnalysisScreenState();
}

class _BridgeAnalysisScreenState extends State<BridgeAnalysisScreen> {
  //conditions of bottom Tabbar
  int currentIndex = 1;
  final pages = const [
    HomeScreen(),
    AnalysisScreen(),
    AlertScreen(),
    BrideSettingScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          value == pages.length - 3
              ? null
              : setState(() {
                  currentIndex = value;
                });
        },
        unselectedItemColor: Appcolors.black,
        selectedItemColor: Appcolors.blue1,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined), label: "Analysis"),
          BottomNavigationBarItem(icon: Text(" "), label: " "),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: "Setting"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              currentIndex = 2;
            });
          },
          backgroundColor: Appcolors.white,
          shape: const CircleBorder(side: BorderSide.none),
          focusColor: Appcolors.blue1,
          child: const Icon(Icons.alarm_outlined),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
