import 'package:dummy_template/pages/set_your_goal/drink_water_glass_screen/drink_water_glass.dart';
import 'package:dummy_template/pages/set_your_goal/template_screen.dart';
import 'package:dummy_template/values/colors.dart';
import 'package:dummy_template/values/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetYourGoalScreen extends StatefulWidget {
  const SetYourGoalScreen({super.key});

  @override
  State<SetYourGoalScreen> createState() => _SetYourGoalScreenState();
}

class _SetYourGoalScreenState extends State<SetYourGoalScreen> {
  //condition of Number of glass

  double valueChoose = 0;

  List<double> items = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Images.background), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              toolbarHeight: 80,
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
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  "Set Your Goal",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Appcolors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Container(
                height: 90,
                width: 90,
                color: Appcolors.blue1,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                  child: Text(
                    valueChoose.toInt().toString(),
                    style: GoogleFonts.poppins(
                      fontSize: 68,
                      fontWeight: FontWeight.w600,
                      color: Appcolors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 52,
              width: 235,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Appcolors.white),
              child: DropdownButtonFormField<double>(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                hint: const Text("Unit: Number of glass "),
                items: items
                    .map((item) => DropdownMenuItem<double>(
                        value: item, child: Text(item.toInt().toString())))
                    .toList(),
                onChanged: (item) => setState(() {
                  valueChoose = item!;
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 48,
                width: 194,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return const TemplateScreen();
                        });
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Appcolors.lightgrey3),
                    elevation: const MaterialStatePropertyAll(10),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  child: Text(
                    "Template Goal",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Appcolors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 48,
                width: 194,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DrinkWaterGlass(value: valueChoose),
                        ));
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
                    "Set Goal!",
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
      ),
    );
  }
}
