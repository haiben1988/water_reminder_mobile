import 'dart:async';
import 'package:dummy_template/pages/bridge_screen/bridge_analysis_screen.dart';
import 'package:dummy_template/pages/set_your_goal/set_your_goal_screen.dart';
import 'package:dummy_template/values/colors.dart';
import 'package:dummy_template/values/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // condition of display timer
  late int H;
  late int h;
  late int m;

  @override
  void initState() {
    super.initState();
    H = DateTime.now().hour;
    h = (DateTime.now().hour > 12)
        ? DateTime.now().hour - 12
        : (DateTime.now().hour == 0)
            ? 12
            : DateTime.now().hour;
    m = DateTime.now().minute;

    Timer.periodic(const Duration(seconds: 1), (Timer t) => getTime());
  }

  getTime() {
    H = DateTime.now().hour;
    h = (DateTime.now().hour > 12)
        ? DateTime.now().hour - 12
        : (DateTime.now().hour == 0)
            ? 12
            : DateTime.now().hour;
    m = DateTime.now().minute;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.lightgrey5,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              height: 60,
              width: 319,
              child: Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 0),
                    child: Text(
                      "Good morning,",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Appcolors.lightgrey3,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 30),
                    child: Text(
                      "Hải Nguyễn",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Appcolors.black2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 280),
                    child: Badge(
                      label: Text(
                        "2",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Appcolors.white),
                        textAlign: TextAlign.center,
                      ),
                      isLabelVisible: true,
                      smallSize: 50,
                      alignment: Alignment.topRight,
                      textColor: Appcolors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 1, vertical: 1),
                      child: Icon(
                        Icons.notifications,
                        color: Appcolors.blue1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              height: 160,
              width: 319,
              child: Card(
                clipBehavior: Clip.antiAlias,
                color: Appcolors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: [
                    WaveWidget(
                      config: CustomConfig(
                        gradients: [
                          [Appcolors.blue5, Appcolors.blue5],
                          [Appcolors.blue5, Appcolors.blue5],
                        ],
                        durations: [3500, 7000],
                        heightPercentages: [0.2, 0.3],
                      ),
                      size: const Size(double.infinity, double.infinity),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 210),
                      child: Image.asset(
                        Images.glasswater,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 120),
                      child: Image.asset(
                        Images.waterdroplet,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 240),
                      child: SizedBox(
                        height: 70,
                        width: 70,
                        child: Image.asset(
                          Images.waterdroplet,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 90, left: 10),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SetYourGoalScreen()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 24,
                          width: 117,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(25),
                              ),
                              color: Appcolors.white),
                          child: Text(
                            "Add Your Goal",
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Appcolors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 20),
                      child: Text(
                        "200ml water (2 Glass)",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Appcolors.lightgrey3),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 12),
                      child: Text(
                        " ${(h < 10) ? "0$h" : h} : ${(m < 10) ? "0$m" : m} ${(H >= 12) ? "PM" : (H < 12) ? "AM" : H}",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Appcolors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              height: 180,
              width: 319,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 165,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Appcolors.blue5,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(90),
                        ),
                      ),
                      child: Container(
                        height: 156,
                        width: 156,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(90),
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              color: Appcolors.white,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(90))),
                              child: WaveWidget(
                                config: CustomConfig(
                                  gradients: [
                                    [Appcolors.blue6, Appcolors.blue6],
                                    [Appcolors.blue6, Appcolors.blue6],
                                  ],
                                  durations: [3500, 7000],
                                  heightPercentages: [0.3, 0.4],
                                ),
                                size: const Size(
                                    double.infinity, double.infinity),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 100),
                              child: Text(
                                "500 ml",
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Appcolors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 135),
                    child: Container(
                      height: 76,
                      width: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Appcolors.white),
                      child: Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              "09:30 AM",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Appcolors.lightgrey3),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 80),
                            child: LinearPercentIndicator(
                              lineHeight: 5,
                              width: 100,
                              progressColor: Appcolors.blue1,
                              backgroundColor: Appcolors.lightgrey2,
                              percent: 0.6,
                              animation: true,
                              animationDuration: 1000,
                              barRadius: const Radius.circular(10),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 45, left: 10),
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                Images.soup,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 45, left: 45),
                            child: Text(
                              "100 ml",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Appcolors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 45, left: 150),
                            child: Text(
                              "10%",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Appcolors.lightgrey3),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90, left: 200),
                    child: Container(
                      height: 76,
                      width: 118,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Appcolors.white),
                      child: Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              "Target",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Appcolors.lightgrey3),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 45, left: 10),
                            child: Text(
                              "200 ml",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Appcolors.black2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 90, top: 50),
                            child: SizedBox(
                              height: 14,
                              width: 14,
                              child: Image.asset(
                                Images.pen,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              height: 48,
              width: 194,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BridgeAnalysisScreen()));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Appcolors.blue1),
                  elevation: const MaterialStatePropertyAll(10),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                child: Text(
                  "Go To Dashboard",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Appcolors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "You got 50% of today's goal. keep\nfocus on your health!",
              style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Appcolors.lightgrey3),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
