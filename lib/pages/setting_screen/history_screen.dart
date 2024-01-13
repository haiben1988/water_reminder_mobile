import 'package:dummy_template/values/colors.dart';
import 'package:dummy_template/values/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_check_box_rounded/flutter_check_box_rounded.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  //conditions of checkday
  bool? sun = false;
  bool? mon = false;
  bool? tue = false;
  bool? wed = false;
  bool? thu = false;
  bool? fri = false;
  bool? sat = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Container(
            height: 104,
            color: Appcolors.blue1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Weekly Completion",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Appcolors.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CheckBoxRounded(
                          isChecked: sun,
                          size: 29,
                          borderColor: Appcolors.blue1,
                          checkedColor: Appcolors.white,
                          uncheckedColor: Appcolors.white2,
                          checkedWidget: Image.asset(Images.check),
                          onTap: (val) {
                            setState(() {
                              sun = val;
                            });
                          },
                        ),
                        Text(
                          "Sun",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Appcolors.white),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CheckBoxRounded(
                          isChecked: mon,
                          size: 29,
                          borderColor: Appcolors.blue1,
                          checkedColor: Appcolors.white,
                          uncheckedColor: Appcolors.white2,
                          checkedWidget: Image.asset(Images.check),
                          onTap: (val) {
                            setState(() {
                              mon = val;
                            });
                          },
                        ),
                        Text(
                          "Mon",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Appcolors.white),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CheckBoxRounded(
                          isChecked: tue,
                          size: 29,
                          borderColor: Appcolors.blue1,
                          checkedColor: Appcolors.white,
                          uncheckedColor: Appcolors.white2,
                          checkedWidget: Image.asset(Images.check),
                          onTap: (val) {
                            setState(() {
                              tue = val;
                            });
                          },
                        ),
                        Text(
                          "Tue",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Appcolors.white),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CheckBoxRounded(
                          isChecked: wed,
                          size: 29,
                          borderColor: Appcolors.blue1,
                          checkedColor: Appcolors.white,
                          uncheckedColor: Appcolors.white2,
                          checkedWidget: Image.asset(Images.check),
                          onTap: (val) {
                            setState(() {
                              wed = val;
                            });
                          },
                        ),
                        Text(
                          "Wed",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Appcolors.white),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CheckBoxRounded(
                          isChecked: thu,
                          size: 29,
                          borderColor: Appcolors.blue1,
                          checkedColor: Appcolors.white,
                          uncheckedColor: Appcolors.white2,
                          checkedWidget: Image.asset(Images.check),
                          onTap: (val) {
                            setState(() {
                              thu = val;
                            });
                          },
                        ),
                        Text(
                          "Thu",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Appcolors.white),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CheckBoxRounded(
                          isChecked: fri,
                          size: 29,
                          borderColor: Appcolors.blue1,
                          checkedColor: Appcolors.white,
                          uncheckedColor: Appcolors.white2,
                          checkedWidget: Image.asset(Images.check),
                          onTap: (val) {
                            setState(() {
                              fri = val;
                            });
                          },
                        ),
                        Text(
                          "Fri",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Appcolors.white),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CheckBoxRounded(
                          isChecked: sat,
                          size: 29,
                          borderColor: Appcolors.blue1,
                          checkedColor: Appcolors.white,
                          uncheckedColor: Appcolors.white2,
                          checkedWidget: Image.asset(Images.check),
                          onTap: (val) {
                            setState(() {
                              sat = val;
                            });
                          },
                        ),
                        Text(
                          "Sat",
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Appcolors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 2,
            color: Appcolors.lightgrey2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Text(
              "Drink water report",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Appcolors.black),
            ),
          ),
          Container(
            height: 2,
            color: Appcolors.lightgrey2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text.rich(
                  TextSpan(
                    text: "• ",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.greenAccent),
                    children: [
                      TextSpan(
                        text: "Weekly average",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Appcolors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text(
                  "0 ml / Day",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Appcolors.blue1),
                ),
              ),
            ],
          ),
          Container(
            height: 2,
            color: Appcolors.lightgrey2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text.rich(
                  TextSpan(
                    text: "• ",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueAccent),
                    children: [
                      TextSpan(
                        text: "Monthly average",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Appcolors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text(
                  "0 ml / Day",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Appcolors.blue1),
                ),
              ),
            ],
          ),
          Container(
            height: 2,
            color: Appcolors.lightgrey2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text.rich(
                  TextSpan(
                    text: "• ",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.orangeAccent),
                    children: [
                      TextSpan(
                        text: "Average Completion",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Appcolors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text(
                  "0 %",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Appcolors.blue1),
                ),
              ),
            ],
          ),
          Container(
            height: 2,
            color: Appcolors.lightgrey2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text.rich(
                  TextSpan(
                    text: "• ",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.redAccent),
                    children: [
                      TextSpan(
                        text: "Drink Frequency",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Appcolors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Text(
                  "0 times / Day",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Appcolors.blue1),
                ),
              ),
            ],
          ),
          Container(
            height: 2,
            color: Appcolors.lightgrey2,
          ),
        ],
      ),
    );
  }
}
