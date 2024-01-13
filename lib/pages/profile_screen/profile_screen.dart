import 'package:dummy_template/pages/bridge_screen/bridge_pages_screen.dart';
import 'package:dummy_template/values/colors.dart';
import 'package:dummy_template/values/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //conditions of state Profile

  String firstName = "";
  String lastName = "";
  String email = "";
  String age = "";
  late int gender;
//condition of direction pages
  bool direction = false;
  int isChecked = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              toolbarHeight: 80,
              leading: IconButton(
                onPressed: () {
                  direction
                      ? Navigator.pop(context)
                      : Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BridgePagesScreen()));
                },
                icon: Icon(
                  Icons.arrow_back_sharp,
                  color: Appcolors.blue1,
                  size: 30,
                ),
              ),
              centerTitle: true,
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  direction ? "Edit Profile" : "My Profile",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Appcolors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        direction = !direction;
                      });
                    },
                    icon: Image.asset(
                      Images.edit,
                      fit: BoxFit.cover,
                    )),
              ],
            ),
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
                        text: firstName,
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
                        text: lastName,
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
                      controller: TextEditingController(text: email),
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
                        text: age,
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
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
                              groupValue: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
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
                              groupValue: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
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
                              groupValue: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
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
            direction
                ? SizedBox(
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
                        "Update",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Appcolors.white,
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
