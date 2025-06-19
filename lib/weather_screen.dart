import 'package:flutter/material.dart';
import 'package:ui_designing/styles/colors/custom_colors.dart';
import 'package:ui_designing/styles/extensions/extensions.dart';
import 'package:ui_designing/styles/layouts/fonts.dart';
import 'package:ui_designing/styles/layouts/sizes.dart';
import 'package:ui_designing/widget/custom_appbar.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.green50,
      appBar: CustomAppBar(title: 'Todays Weather'),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.s16),
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                color: CustomColors.green500,
                borderRadius: BorderRadius.circular(Sizes.s22),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(Sizes.s12),
                        child: Text(
                          "Bekasi Timur,27 Nov 2023",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "33",
                            style: TextStyle(
                              color: CustomColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: FontSize.f36,
                            ),
                          ).padOnly(left: Sizes.s16, top: Sizes.s1),
                          SizedBox(width: Sizes.s4),
                          Text(
                            "°C",
                            style: TextStyle(
                              color: CustomColors.white,
                              fontSize: FontSize.f35,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.cloud,
                        color: CustomColors.white,
                        size: Sizes.s50,
                      ).padOnly(right: Sizes.s12, top: Sizes.s1),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Humidity 76%",
                        style: TextStyle(
                          color: CustomColors.white,
                          fontSize: FontSize.f16,
                        ),
                      ),
                      Text(
                        "Cloudy",
                        style: TextStyle(
                          color: CustomColors.white,
                          fontSize: FontSize.f16,
                        ),
                      ),
                    ],
                  ).padOnly(left: Sizes.s14, right: Sizes.s14, top: Sizes.s3),

                  SizedBox(height: Sizes.s5),
                  Divider(
                    height: Sizes.s10,
                    indent: Sizes.s11,
                    endIndent: Sizes.s11,
                    thickness: Sizes.s1,
                    color: CustomColors.white.withOpacity(0.2),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Today is a good day to apply pesticides.",
                        style: TextStyle(
                          fontSize: FontSize.f15,
                          color: CustomColors.white,
                        ),
                      ).padOnly(left: Sizes.s12, top: Sizes.s6),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: Sizes.s12),
            Container(
              height: 365,
              width: double.infinity,
              decoration: BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.circular(Sizes.s12),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Notes",
                        style: TextStyle(
                          color: CustomColors.black,
                          fontSize: FontSize.f16,
                          fontWeight: FontWeight.bold,
                        ),
                      ).padOnly(left: Sizes.s14, top: Sizes.s10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(2),
                          elevation: 0,
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: CustomColors.black,
                          size: FontSize.f18,
                        ),
                      ).padOnly(right: Sizes.s8, top: Sizes.s10),
                    ],
                  ),
                  _weatherNote(),
                  SizedBox(height: Sizes.s8),
                  _weatherNote(),
                  SizedBox(height: Sizes.s8),
                  _weatherNote(),
                  SizedBox(height: Sizes.s8),
                  _weatherNote(),
                  SizedBox(height: Sizes.s16),

                  SizedBox(
                    width: double.infinity,
                    height: Sizes.s40,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_circle,
                        color: CustomColors.white,
                        size: FontSize.f20,
                      ),
                      label: Text(
                        "Add New Note",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: FontSize.f18,
                          color: CustomColors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColors.green500,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Sizes.s20),
                        ),
                      ),
                    ),
                  ).padOnly(left: Sizes.s16, right: Sizes.s12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _weatherNote() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(Sizes.s10),
          child: Image.asset("assets/agri.jpg", height: 55),
        ).padOnly(left: Sizes.s14, top: Sizes.s2),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "May 24 .5:43 pm",
                  style: TextStyle(
                    color: CustomColors.black,
                    fontSize: FontSize.f15,
                    fontWeight: FontWeight.w900,
                  ),
                ).padOnly(left: Sizes.s12),
                Text(
                  "Excellent harvest,the grapes have\na rich flavor and aroma",
                  style: TextStyle(
                    color: CustomColors.black,
                    fontSize: FontSize.f12,
                    fontWeight: FontWeight.w500,
                  ),
                ).padOnly(left: Sizes.s12),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
