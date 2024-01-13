import 'package:dummy_template/pages/bridge_screen/bridge_pages_screen.dart';
import 'package:dummy_template/pages/onboarding_screens/setup_screen/minutes.dart';
import 'package:dummy_template/pages/onboarding_screens/setup_screen/hours.dart';
import 'package:dummy_template/values/colors.dart';
import 'package:dummy_template/values/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class SetupScreen extends StatefulWidget {
  const SetupScreen({super.key});

  @override
  State<SetupScreen> createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
//conditions of "What is your gender?"

  bool isVisibleMale = false;
  bool isVisibleFemale = false;
  bool isVisibleOthers = false;

//conditions of " How old are you?"
  double currentValueOld = 0;
//conditions of " What is your weight?"
  double currentValueWeight = 0;
//conditions of " What is your height?"
  double currentValueHeight = 0;
//conditions of time of Wake up time"
  int? slidingWakeup = 0;
//conditions of time of Sleeping time"
  int? slidingSleeping = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white,
      appBar: AppBar(
        backgroundColor: Appcolors.white,
        toolbarHeight: 50,
        leadingWidth: 60,
        leading: IconButton(
          onPressed: () => {Navigator.pop(context)},
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Appcolors.blue1,
            size: 30,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            "Select your age,weight,\ngender and height",
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Appcolors.black),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text("What is your gender?",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Appcolors.black),
                      textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                for (isVisibleMale = true;
                                    isVisibleFemale = false;
                                    isVisibleOthers = false) {
                                  isVisibleMale = !isVisibleMale;
                                }
                              });
                            },
                            icon: Image.asset(Images.male, fit: BoxFit.cover),
                          ),
                          Positioned(
                            left: 80,
                            top: 80,
                            child: Visibility(
                              visible: isVisibleMale,
                              child: Image.asset(Images.greencheck,
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                for (isVisibleFemale = true;
                                    isVisibleMale = false;
                                    isVisibleOthers = false) {
                                  isVisibleFemale = !isVisibleFemale;
                                }
                              });
                            },
                            icon: Image.asset(Images.female, fit: BoxFit.cover),
                          ),
                          Positioned(
                            left: 80,
                            top: 80,
                            child: Visibility(
                              visible: isVisibleFemale,
                              child: Image.asset(Images.greencheck,
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                for (isVisibleOthers = true;
                                    isVisibleFemale = false;
                                    isVisibleMale = false) {
                                  isVisibleOthers = !isVisibleOthers;
                                }
                              });
                            },
                            icon: Image.asset(Images.others, fit: BoxFit.cover),
                          ),
                          Positioned(
                            left: 80,
                            top: 80,
                            child: Visibility(
                              visible: isVisibleOthers,
                              child: Image.asset(Images.greencheck,
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text("How old are you?",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Appcolors.black),
                      textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SfSliderTheme(
                    data: SfSliderThemeData(
                      activeTrackColor: Appcolors.blue1,
                      inactiveTickColor: Appcolors.lightgrey2,
                      thumbColor: Appcolors.white,
                      thumbStrokeWidth: 1,
                      thumbStrokeColor: Appcolors.lightgrey2,
                      thumbRadius: 18,
                    ),
                    child: SfSlider(
                      min: 0,
                      max: 100,
                      value: currentValueOld,
                      onChanged: (currentValueOld) => setState(
                          () => this.currentValueOld = currentValueOld),
                      showLabels: true,
                      labelPlacement: LabelPlacement.onTicks,
                      edgeLabelPlacement: EdgeLabelPlacement.inside,
                      thumbIcon: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Container(
                              color: Appcolors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7),
                            child: Text(
                              currentValueOld.toInt().toString(),
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Appcolors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text.rich(
                    TextSpan(
                      text: "What is your weight?",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Appcolors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "(in kg)",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Appcolors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SfSliderTheme(
                    data: SfSliderThemeData(
                      activeTrackColor: Appcolors.blue1,
                      inactiveTickColor: Appcolors.lightgrey2,
                      thumbColor: Appcolors.white,
                      thumbStrokeWidth: 1,
                      thumbStrokeColor: Appcolors.lightgrey2,
                      thumbRadius: 18,
                    ),
                    child: SfSlider(
                      min: 0,
                      max: 200,
                      value: currentValueWeight,
                      onChanged: (currentValueWeight) => setState(
                          () => this.currentValueWeight = currentValueWeight),
                      showLabels: true,
                      labelPlacement: LabelPlacement.onTicks,
                      edgeLabelPlacement: EdgeLabelPlacement.inside,
                      thumbIcon: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Container(
                              color: Appcolors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 6),
                            child: Text(
                              currentValueWeight.toInt().toString(),
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Appcolors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text.rich(
                    TextSpan(
                      text: "What is your height?",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Appcolors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "(in cm)",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Appcolors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SfSliderTheme(
                    data: SfSliderThemeData(
                      activeTrackColor: Appcolors.blue1,
                      inactiveTickColor: Appcolors.lightgrey2,
                      thumbColor: Appcolors.white,
                      thumbStrokeWidth: 1,
                      thumbStrokeColor: Appcolors.lightgrey2,
                      thumbRadius: 18,
                    ),
                    child: SfSlider(
                      min: 0,
                      max: 200,
                      value: currentValueHeight,
                      onChanged: (currentValueHeight) => setState(
                          () => this.currentValueHeight = currentValueHeight),
                      showLabels: true,
                      labelPlacement: LabelPlacement.onTicks,
                      edgeLabelPlacement: EdgeLabelPlacement.inside,
                      thumbIcon: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Container(
                              color: Appcolors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 6),
                            child: Text(
                              currentValueHeight.toInt().toString(),
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Appcolors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Wake up time",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Appcolors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Appcolors.lightgrey,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //hours
                            Expanded(
                              child: ListWheelScrollView.useDelegate(
                                onSelectedItemChanged: (value) {
                                  return;
                                },
                                itemExtent: 25,
                                perspective: 0.005,
                                diameterRatio: 2,
                                overAndUnderCenterOpacity: 0.3,
                                physics: const FixedExtentScrollPhysics(),
                                childDelegate: ListWheelChildBuilderDelegate(
                                    childCount: 13,
                                    builder: (context, index) {
                                      return MyHours(
                                        hours: index,
                                      );
                                    }),
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                ":",
                                style: GoogleFonts.poppins(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                    color: Appcolors.black),
                              ),
                            ),
                            //mins
                            Expanded(
                              child: ListWheelScrollView.useDelegate(
                                onSelectedItemChanged: (value) {
                                  return;
                                },
                                overAndUnderCenterOpacity: 0.3,
                                itemExtent: 25,
                                perspective: 0.005,
                                diameterRatio: 2,
                                physics: const FixedExtentScrollPhysics(),
                                childDelegate: ListWheelChildBuilderDelegate(
                                    childCount: 60,
                                    builder: (context, index) {
                                      return MyMinutes(
                                        mins: index,
                                      );
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 120,
                        height: 50,
                        child: CupertinoSlidingSegmentedControl(
                          thumbColor: Appcolors.blue2,
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          children: {
                            0: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 9),
                              child: Text(
                                "AM",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Appcolors.black),
                              ),
                            ),
                            1: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 9),
                              child: Text(
                                "Off",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Appcolors.black),
                              ),
                            ),
                          },
                          groupValue: slidingWakeup,
                          onValueChanged: (int? newValue) {
                            setState(() {
                              slidingWakeup = newValue;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Sleeping time",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Appcolors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Appcolors.lightgrey,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //hours
                            Expanded(
                              child: ListWheelScrollView.useDelegate(
                                onSelectedItemChanged: (value) {
                                  return;
                                },
                                itemExtent: 25,
                                perspective: 0.005,
                                diameterRatio: 2,
                                overAndUnderCenterOpacity: 0.3,
                                physics: const FixedExtentScrollPhysics(),
                                childDelegate: ListWheelChildBuilderDelegate(
                                    childCount: 13,
                                    builder: (context, index) {
                                      return MyHours(
                                        hours: index,
                                      );
                                    }),
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                ":",
                                style: GoogleFonts.poppins(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                    color: Appcolors.black),
                              ),
                            ),
                            //mins
                            Expanded(
                              child: ListWheelScrollView.useDelegate(
                                onSelectedItemChanged: (value) {
                                  return;
                                },
                                overAndUnderCenterOpacity: 0.3,
                                itemExtent: 25,
                                perspective: 0.005,
                                diameterRatio: 2,
                                physics: const FixedExtentScrollPhysics(),
                                childDelegate: ListWheelChildBuilderDelegate(
                                    childCount: 60,
                                    builder: (context, index) {
                                      return MyMinutes(
                                        mins: index,
                                      );
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 120,
                        height: 50,
                        child: CupertinoSlidingSegmentedControl(
                          thumbColor: Appcolors.blue2,
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          children: {
                            0: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 9),
                              child: Text(
                                "Off",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Appcolors.black),
                              ),
                            ),
                            1: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 9),
                              child: Text(
                                "PM",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Appcolors.black),
                              ),
                            ),
                          },
                          groupValue: slidingSleeping,
                          onValueChanged: (int? newValue) {
                            setState(() {
                              slidingSleeping = newValue;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.arrow_back_sharp, color: Appcolors.blue3, size: 20),
                Text(
                  "Skip",
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Appcolors.blue3),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BridgePagesScreen()));
            },
            child: Row(
              children: [
                Text(
                  "Next",
                  style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Appcolors.blue4),
                ),
                Icon(
                  Icons.arrow_forward_sharp,
                  color: Appcolors.blue4,
                  size: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
