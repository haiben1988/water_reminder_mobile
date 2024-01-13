import 'package:dummy_template/pages/profile_screen/profile_screen.dart';
import 'package:dummy_template/values/colors.dart';
import 'package:dummy_template/values/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileScreen extends StatefulWidget {
  final String firstname;
  final String lastName;
  final String email;
  final String age;
  final int gender;
  const EditProfileScreen(
      {super.key,
      required this.firstname,
      required this.lastName,
      required this.email,
      required this.age,
      required this.gender});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  int ischecked = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(
            Images.profile,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "First Name",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Appcolors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: 46,
                width: 327,
                child: CupertinoTextField(
                  decoration: BoxDecoration(
                    color: Appcolors.lightgrey5,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Appcolors.grey),
                  controller: TextEditingController(
                    text: widget.firstname,
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Last Name",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Appcolors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: 46,
                width: 327,
                child: CupertinoTextField(
                  decoration: BoxDecoration(
                    color: Appcolors.lightgrey5,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Appcolors.grey),
                  controller: TextEditingController(
                    text: widget.lastName,
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Email Address",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Appcolors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: 46,
                width: 327,
                child: CupertinoTextField(
                  decoration: BoxDecoration(
                    color: Appcolors.lightgrey5,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Appcolors.grey),
                  controller: TextEditingController(text: widget.email),
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Age",
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Appcolors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                height: 46,
                width: 327,
                child: CupertinoTextField(
                  decoration: BoxDecoration(
                    color: Appcolors.lightgrey5,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Appcolors.grey),
                  controller: TextEditingController(
                    text: widget.age,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "Gender",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Appcolors.black),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          hoverColor: Appcolors.green,
                          activeColor: Appcolors.blue1,
                          groupValue: widget.gender,
                          onChanged: (value) {
                            setState(() {
                              ischecked = value!;
                            });
                          }),
                      Text(
                        "Male",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Appcolors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          activeColor: Appcolors.blue1,
                          groupValue: widget.gender,
                          onChanged: (value) {
                            setState(() {
                              ischecked = value!;
                            });
                          }),
                      Text(
                        "Female",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Appcolors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 3,
                          activeColor: Appcolors.blue1,
                          groupValue: widget.gender,
                          onChanged: (value) {
                            setState(() {
                              ischecked = value!;
                            });
                          }),
                      Text(
                        "Other",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Appcolors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 48,
          width: 121,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()));
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
              "Update",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Appcolors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
