import 'package:dummy_template/values/colors.dart';
import 'package:dummy_template/values/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class AnalysisScreen extends StatefulWidget {
  const AnalysisScreen({super.key});

  @override
  State<AnalysisScreen> createState() => _AnalysisScreenState();
}

class _AnalysisScreenState extends State<AnalysisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white2,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Text(
              "For today",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Appcolors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 236,
                  width: 154,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Appcolors.white,
                    border: Border.all(
                      width: 1,
                      color: Appcolors.lightgrey2,
                    ),
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Text(
                          "Water",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Appcolors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60, left: 15),
                        child: SizedBox(
                          height: 80,
                          width: 124,
                          child: Image.asset(
                            Images.barchart,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 140),
                        child: SizedBox(
                          height: 100,
                          width: 154,
                          child: Card(
                            margin: const EdgeInsets.all(0),
                            clipBehavior: Clip.antiAlias,
                            color: Appcolors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            child: Stack(
                              children: [
                                WaveWidget(
                                  backgroundColor: Appcolors.white,
                                  config: CustomConfig(
                                    gradients: [
                                      [Appcolors.blue5, Appcolors.blue5],
                                      [Appcolors.blue5, Appcolors.blue5],
                                    ],
                                    durations: [3500, 7000],
                                    heightPercentages: [0.2, 0.3],
                                  ),
                                  size: const Size(
                                      double.infinity, double.infinity),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 190, left: 15),
                        child: Text.rich(
                          TextSpan(
                            text: "2.1 ",
                            style: GoogleFonts.poppins(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Appcolors.white),
                            children: [
                              TextSpan(
                                text: "liters",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Appcolors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 236,
                  width: 154,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Appcolors.white,
                    border: Border.all(
                      width: 1,
                      color: Appcolors.lightgrey2,
                    ),
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Text(
                          "Walk",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Appcolors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80, left: 20),
                        child: SizedBox(
                          height: 110,
                          width: 110,
                          child: CircularProgressIndicator(
                            color: Appcolors.blue1,
                            backgroundColor: Appcolors.blue5,
                            value: 0.7,
                            strokeAlign:
                                CircularProgressIndicator.strokeAlignCenter,
                            strokeWidth: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100, left: 40),
                        child: Text(
                          "2628",
                          style: GoogleFonts.poppins(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Appcolors.blue1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 130, left: 35),
                        child: Text.rich(
                          TextSpan(
                            text: "      Steps\n",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Appcolors.black,
                            ),
                            children: [
                              TextSpan(
                                text: " Completed",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Appcolors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 340,
                  width: 154,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 161,
                        width: 154,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Appcolors.white,
                          border: Border.all(
                            width: 1,
                            color: Appcolors.lightgrey2,
                          ),
                        ),
                        child: Stack(
                          alignment: AlignmentDirectional.topStart,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 15),
                              child: Text(
                                "Calories",
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Appcolors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 90, left: 15),
                              child: Text.rich(
                                TextSpan(
                                  text: "510.43\n",
                                  style: GoogleFonts.poppins(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Appcolors.blue1,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: " Kcol",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Appcolors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 161,
                        width: 154,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Appcolors.white,
                          border: Border.all(
                            width: 1,
                            color: Appcolors.lightgrey2,
                          ),
                        ),
                        child: Stack(
                          alignment: AlignmentDirectional.topStart,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 15),
                              child: Text(
                                "Sleeps",
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Appcolors.black),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 90, left: 15),
                              child: Text.rich(
                                TextSpan(
                                  text: "08:00\n",
                                  style: GoogleFonts.poppins(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Appcolors.blue1,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: " hours",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Appcolors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 340,
                  width: 154,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Appcolors.white,
                    border: Border.all(
                      width: 1,
                      color: Appcolors.lightgrey2,
                    ),
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15),
                        child: Text(
                          "Heart",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Appcolors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 80, left: 30),
                        child: SizedBox(
                          height: 93,
                          width: 86,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(
                                Images.heart,
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                Images.heartrate,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 170),
                        child: SizedBox(
                          height: 111,
                          width: 154,
                          child: Image.asset(
                            Images.rategradient,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 250, left: 15),
                        child: Text.rich(
                          TextSpan(
                            text: "105\n",
                            style: GoogleFonts.poppins(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                              color: Appcolors.blue1,
                            ),
                            children: [
                              TextSpan(
                                text: " bpm",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Appcolors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
