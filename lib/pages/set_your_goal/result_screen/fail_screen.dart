import 'dart:async';
import 'package:dummy_template/pages/bridge_screen/bridge_pages_screen.dart';
import 'package:dummy_template/values/colors.dart';
import 'package:dummy_template/values/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FailScreen extends StatefulWidget {
  const FailScreen({super.key});

  @override
  State<FailScreen> createState() => _FailScreenState();
}

class _FailScreenState extends State<FailScreen> {
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
    return Scaffold(
        backgroundColor: Appcolors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 20),
              child: Text(
                " Today - ${(M < 10) ? "0$M" : M} , $Y",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Appcolors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, bottom: 20),
              child: Text(
                " Hi Hải Nguyễn,",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Appcolors.lightgrey3,
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset(
                Images.sadface,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 400,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 340,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Appcolors.lightgrey5,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                              top: 30,
                              bottom: 10,
                            ),
                            child: Text(
                              "Oops!",
                              style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Appcolors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 30,
                            ),
                            child: Text(
                              "Hải Nguyễn has not archive your\ngoal today",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Appcolors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            child: Text(
                              "Success is not final, failure\nis not fatal: it is the courage\nto continue that count.",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Appcolors.lightgrey7,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Positioned(
                    top: -15,
                    right: 30,
                    child: Image.asset(
                      Images.confetti,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: -40,
                    left: 40,
                    child: Image.asset(
                      Images.goldtrophy,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 48,
                width: 194,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BridgePagesScreen()));
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
                    "Go to Home",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Appcolors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 3,
              width: 134,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Appcolors.lightgrey3),
            ),
          ],
        ));
  }
}
