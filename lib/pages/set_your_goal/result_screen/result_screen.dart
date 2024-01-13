import 'package:dummy_template/pages/set_your_goal/result_screen/fail_screen.dart';
import 'package:dummy_template/pages/set_your_goal/result_screen/success_screen.dart';
import 'package:dummy_template/values/colors.dart';
import 'package:dummy_template/values/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class ResultScreen extends StatefulWidget {
  final double value;
  const ResultScreen({
    super.key,
    required this.value,
  });

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  //conditions of date and time
  late int H;
  late int h;
  late int m;
  late int D;
  late int M;
  late int Y;

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
    D = DateTime.now().day;
    M = DateTime.now().month;
    Y = DateTime.now().year;

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
    D = DateTime.now().day;
    M = DateTime.now().month;
    Y = DateTime.now().year;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(28),
          topRight: Radius.circular(28),
        ),
        color: Appcolors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 106,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                    ),
                    color: Appcolors.blue1),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 3,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Appcolors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Date & Time",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Appcolors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text(
                  " ${(D < 10) ? "0$D" : D} - ${(M < 10) ? "0$M" : M} - $Y",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Appcolors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Text(
                  " ${(h < 10) ? "0$h" : h} : ${(m < 10) ? "0$m" : m} ${(H >= 12) ? "PM" : (H < 12) ? "AM" : H}",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Appcolors.black),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Text(
              "Goal Preview",
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Appcolors.black),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 110,
                    width: 110,
                    child: CircularProgressIndicator(
                      color: widget.value * 10 < 80
                          ? Appcolors.blue1
                          : Appcolors.green,
                      backgroundColor: Appcolors.lightgrey3,
                      value: widget.value / 10,
                      strokeAlign: CircularProgressIndicator.strokeAlignCenter,
                      strokeWidth: 12,
                      strokeCap: StrokeCap.round,
                    ),
                  ),
                  Text(
                    "${(widget.value * 10).toInt()}%",
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Appcolors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 92,
                      width: 153,
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
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              "Athlete\nPerformace",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Appcolors.lightgrey3),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 10),
                            child: Text(
                              widget.value * 10 < 80
                                  ? "-${(widget.value * 10).toInt()}%"
                                  : "+${(widget.value * 10).toInt()}%",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: widget.value * 10 < 80
                                      ? Appcolors.red
                                      : Appcolors.green),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, left: 100),
                            child: Image.asset(
                              Images.personrunning,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 92,
                      width: 153,
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
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: Text(
                              "Cognitive\nPerformace",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Appcolors.lightgrey3),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 10),
                            child: Text(
                              widget.value * 10 < 80
                                  ? "-${(widget.value * 10).toInt()}%"
                                  : "+${(widget.value * 10).toInt()}%",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: widget.value * 10 < 80
                                      ? Appcolors.red
                                      : Appcolors.green),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25, left: 100),
                            child: Image.asset(
                              Images.thinking,
                              fit: BoxFit.cover,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  height: 48,
                  width: 194,
                  child: ElevatedButton(
                    onPressed: () {
                      if (widget.value * 10 >= 80) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SuccessScreen()));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FailScreen()));
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Appcolors.blue1),
                      elevation: const MaterialStatePropertyAll(10),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    child: Text(
                      widget.value * 10 >= 80
                          ? "Goal Archive"
                          : "Goal Not Archive",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Appcolors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Container(
                  height: 3,
                  width: 134,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Appcolors.lightgrey3),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
