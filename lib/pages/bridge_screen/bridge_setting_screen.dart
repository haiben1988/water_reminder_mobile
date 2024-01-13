import 'package:dummy_template/pages/setting_screen/history_screen.dart';
import 'package:dummy_template/pages/setting_screen/setting_screen.dart';
import 'package:dummy_template/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrideSettingScreen extends StatefulWidget {
  const BrideSettingScreen({super.key});

  @override
  State<BrideSettingScreen> createState() => _BrideSettingScreenState();
}

class _BrideSettingScreenState extends State<BrideSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: Appcolors.white,
        appBar: TabBar(
          padding: const EdgeInsets.only(top: 50),
          indicatorColor: Appcolors.blue1,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 2,
          labelColor: Appcolors.blue1,
          unselectedLabelColor: Appcolors.grey,
          tabs: [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.history_outlined),
                  Text(
                    "  History  ",
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.settings_outlined),
                  Text(
                    "  Setting  ",
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )
          ],
        ),
        body: const TabBarView(
          children: [
            HistoryScreen(),
            SettingScreen(),
          ],
        ),
      ),
    );
  }
}
