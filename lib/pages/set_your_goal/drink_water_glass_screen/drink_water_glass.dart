import 'package:dummy_template/pages/set_your_goal/result_screen/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:dummy_template/values/images.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:dummy_template/values/colors.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class DrinkWaterGlass extends StatefulWidget {
  final double value;
  const DrinkWaterGlass({
    super.key,
    required this.value,
  });

  @override
  State<DrinkWaterGlass> createState() => _DrinkWaterGlassState();
}

class _DrinkWaterGlassState extends State<DrinkWaterGlass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Images.background), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Drink Water Glass",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Appcolors.black),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: 340,
              height: 200,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: 180,
                    width: 210,
                    child: SfLinearGauge(
                      minimum: 1,
                      maximum: 10,
                      orientation: LinearGaugeOrientation.vertical,
                      showAxisTrack: true,
                      maximumLabels: 1,
                      axisTrackStyle: const LinearAxisTrackStyle(
                        color: Colors.transparent,
                      ),
                      interval: 1,
                      axisLabelStyle: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Appcolors.black),
                      majorTickStyle: LinearTickStyle(
                        length: 20,
                        color: Appcolors.black,
                        thickness: 2,
                      ),
                      labelPosition: LinearLabelPosition.outside,
                      minorTicksPerInterval: 0,
                      markerPointers: [
                        LinearWidgetPointer(
                          markerAlignment: LinearMarkerAlignment.center,
                          animationDuration: 5000,
                          offset: 10,
                          value: widget.value,
                          child: Row(
                            children: [
                              Text(
                                "${widget.value.toInt()} Glass\nWater",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Appcolors.black),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 20,
                                color: Appcolors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 200,
                    bottom: 0,
                    height: 200,
                    width: 130,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        SizedBox(
                          height: 160,
                          width: 140,
                          child: WaveWidget(
                            waveFrequency: 0,
                            isLoop: false,
                            config: CustomConfig(
                              gradients: [
                                [Appcolors.blue1, Appcolors.blue1],
                              ],
                              durations: [350],
                              heightPercentages: [1.0 - widget.value / 10],
                            ),
                            size: const Size(double.infinity, double.infinity),
                          ),
                        ),
                        SizedBox(
                          height: 220,
                          width: 150,
                          child: Image.asset(
                            Images.waterglass,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 100, horizontal: 120),
              child: SizedBox(
                height: 48,
                width: 194,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return ResultScreen(
                            value: widget.value,
                          );
                        });
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
                    "Result",
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
