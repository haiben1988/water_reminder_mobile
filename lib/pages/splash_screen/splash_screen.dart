import 'package:dummy_template/pages/onboarding_screens/onboarding_screen.dart';
import 'package:dummy_template/values/colors.dart';
import 'package:dummy_template/values/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goOnboarding();
  }

  void goOnboarding() async {
    await Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const OnboardingScreen()),
            (Route<dynamic> route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.blue1,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Images.splashScreen), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Image.asset(
                  Images.waterdroplet,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                child: Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    text: "Drops Water Tracker\n",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Appcolors.white),
                    children: [
                      TextSpan(
                        text:
                            "Stay hydrated and track your\ndaily water intake",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Appcolors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: CircularProgressIndicator(
                  color: Appcolors.blue1,
                  backgroundColor: Appcolors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
