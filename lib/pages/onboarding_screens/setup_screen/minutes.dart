// ignore_for_file: must_be_immutable

import 'package:dummy_template/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMinutes extends StatelessWidget {
  int mins;
  MyMinutes({super.key, required this.mins});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 22,
      child: Center(
        child: Text(
          mins < 10 ? "0$mins" : mins.toString(),
          style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Appcolors.black),
        ),
      ),
    );
  }
}
