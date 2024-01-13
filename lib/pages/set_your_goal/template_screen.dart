import 'package:dummy_template/values/colors.dart';
import 'package:dummy_template/values/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TemplateScreen extends StatefulWidget {
  const TemplateScreen({super.key});

  @override
  State<TemplateScreen> createState() => _TemplateScreenState();
}

class _TemplateScreenState extends State<TemplateScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        child: Container(
          height: 455,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(28),
              topRight: Radius.circular(28),
            ),
            color: Appcolors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 3,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Appcolors.blue1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "Water Goal",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Appcolors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "We prepared a lot of goals for you!",
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Appcolors.lightgrey3),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 52,
                  width: 319,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: CupertinoSearchTextField(
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Appcolors.lightgrey3),
                    controller: TextEditingController(
                      text: "Search Template",
                    ),
                    prefixIcon: Image.asset(Images.search),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Container(
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
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  "Summer time",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Appcolors.lightgrey3),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 50, left: 10),
                                child: Text(
                                  "10 Glass",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Appcolors.black),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 45, left: 110),
                                child: Image.asset(
                                  Images.coconuttree,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Container(
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
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  "Snow day",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Appcolors.lightgrey3),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 50, left: 10),
                                child: Text(
                                  "5 Glass",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Appcolors.black),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 45, left: 110),
                                child: Image.asset(
                                  Images.snowflake,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Container(
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
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  "Sporty",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Appcolors.lightgrey3),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 50, left: 10),
                                child: Text(
                                  "7 Glass",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Appcolors.black),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 45, left: 110),
                                child: Image.asset(
                                  Images.ball,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Container(
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
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  "Child",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Appcolors.lightgrey3),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 50, left: 10),
                                child: Text(
                                  "4 Glass",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Appcolors.black),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 45, left: 110),
                                child: Image.asset(
                                  Images.rainbow,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
