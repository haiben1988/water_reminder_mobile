import 'package:dummy_template/pages/onboarding_screens/content_model.dart';
import 'package:dummy_template/pages/onboarding_screens/setup_screen/setup_screen.dart';
import 'package:dummy_template/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  PageController controller = PageController();
  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        leadingWidth: 60,
        leading: IconButton(
          onPressed: () => {
            if (currentIndex == contents.length - 3)
              {
                Future.delayed(const Duration(milliseconds: 1000), () {
                  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                })
              },
            controller.previousPage(
                duration: const Duration(microseconds: 500),
                curve: Curves.bounceIn)
          },
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Appcolors.blue1,
            size: 30,
          ),
        ),
      ),
      body: PageView.builder(
        controller: controller,
        itemCount: contents.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (_, i) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(contents[i].image, fit: BoxFit.cover)),
              SizedBox(
                height: 60,
                width: 302,
                child: Text(
                  contents[i].title,
                  style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Appcolors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 44,
                width: 318,
                child: Text(
                  contents[i].discripton,
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Appcolors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 6,
                width: 85,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    contents.length,
                    (index) => buildDot(index, context),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 318,
                child: ElevatedButton(
                  onPressed: () {
                    if (currentIndex == contents.length - 1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const SetupScreen()));
                    }
                    controller.nextPage(
                        duration: const Duration(microseconds: 500),
                        curve: Curves.bounceIn);
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
                    currentIndex == contents.length - 1
                        ? "GET STARTED"
                        : "NEXT",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Appcolors.white,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentIndex == index ? 23 : 23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Appcolors.blue1 : Appcolors.lightgrey,
      ),
    );
  }
}
