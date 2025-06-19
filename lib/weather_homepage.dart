import 'package:flutter/material.dart';
import 'package:ui_designing/styles/colors/colors.dart';
import 'package:ui_designing/styles/extensions/extensions.dart';
import 'package:ui_designing/styles/layouts/fonts.dart';
import 'package:ui_designing/styles/layouts/sizes.dart';
import 'package:ui_designing/weather_screen.dart';

class WeatherHomePage extends StatelessWidget {
  const WeatherHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.green50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: Sizes.s240,
                      padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.s16,
                        vertical: Sizes.s60,
                      ),
                      decoration: BoxDecoration(
                        color: CustomColors.green500,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(Sizes.s20),
                          bottomRight: Radius.circular(Sizes.s20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      text: 'Hello ',
                                      style: Theme.of(
                                        context,
                                      ).textTheme.titleLarge,
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Good Morning',
                                          style: Theme.of(
                                            context,
                                          ).textTheme.titleLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: Sizes.s3),
                                  Text(
                                    "Sunday, 01 Dec 2024",
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleMedium,
                                  ),
                                ],
                              ),
                              const CircleAvatar(
                                radius: 24,
                                backgroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/OIP.jnnuUvM0BLh9YdgE0z0ifQHaE8?w=1200&h=800&rs=1&pid=ImgDetMain',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: Sizes.s20),
                          Container(
                            height: Sizes.s50,
                            decoration: BoxDecoration(
                              color: CustomColors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(Sizes.s20),
                            ),
                            child: TextField(
                              style: TextStyle(color: CustomColors.white),
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: CustomColors.white,
                                ),
                                suffixIcon: const Icon(
                                  Icons.mic,
                                  color: CustomColors.white,
                                ),
                                hintText: 'Search here...',
                                hintStyle: Theme.of(context).textTheme.titleMedium,
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: Sizes.s20,
                                  vertical: Sizes.s15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height:Sizes.s195),
                  ],
                ),

                Positioned(
                  top: Sizes.s200,
                  left: Sizes.s16,
                  right: Sizes.s16,
                  child: Container(
                    decoration: BoxDecoration(
                      color: CustomColors.white,
                      borderRadius: BorderRadius.circular(Sizes.s20),
                      boxShadow: const [
                        BoxShadow(color: Colors.transparent, blurRadius: 0),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined),
                                SizedBox(width: 6),
                                Text(
                                  'Chateauneuf-du-Pape',
                                  style: TextStyle(fontSize: FontSize.f18),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height:Sizes.s12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '+17',
                                  style: Theme.of(context).textTheme.displaySmall,
                                ),
                                SizedBox(width: Sizes.s4),
                                Text(
                                  '°C',
                                  style: TextStyle(fontSize: FontSize.f20),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "H:23°C\nL:14°C",
                                      style: TextStyle(
                                        color: CustomColors.black50,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.cloudy_snowing,
                                  size: Sizes.s36,
                                  color: Colors.blue.shade500,
                                ),
                                SizedBox(height: Sizes.s4),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: Sizes.s12),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _weatherInfo('Humidity', '40%'),
                            _weatherInfo('Precipitation', '5.1ml'),
                            _weatherInfo('Pressure', '450 hpa'),
                            _weatherInfo('Wind', '23m/s'),
                          ],
                        ),
                        const SizedBox(height: Sizes.s12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _weatherInfo('Sunrise', '5:25 am'),
                            _weatherInfo('Sunset', '8:04 am'),
                          ],
                        ),
                      ],
                    ).padAll(Sizes.s16),
                  ),

                ),
              ],
            ),
            const SizedBox(height: Sizes.s15),
              Row(
                children: [
                  Text(
                    'Invest by Category',
                    style: TextStyle(
                      fontSize: FontSize.f18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ).padSymmetric(hor: Sizes.s18,ver: Sizes.s8),

            const SizedBox(height: Sizes.s8),

            SizedBox(
              height: 75,
              child: ListView(
                scrollDirection: Axis.horizontal,
               // padding: const EdgeInsets.symmetric(horizontal: Sizes.s16),
                children: [
                  _categoryCard(Icons.timer, 'Duration'),
                  _categoryCard(Icons.backup_rounded, 'Return'),
                  _categoryCard(Icons.warning_amber_rounded, 'Low Risk'),
                  _categoryCard(Icons.safety_check, 'Safety'),
                ],
              ),
            )
        .padSymmetric(hor:Sizes.s16,ver: Sizes.s10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Offers',
                  style:
                  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: FontSize.f18,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherScreen()));
                  },
                  child: Text(
                    'View all',
                    style: TextStyle(color: CustomColors.green700),
                  ),
                ),
              ],
            ).padSymmetric(hor: Sizes.s13, ver: Sizes.s8),
          ],
        ),
      ),
    );
  }

  static Widget _weatherInfo(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: FontSize.f14, color: CustomColors.black50),
        ),
        const SizedBox(height: 4),
        Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }

  static Widget _categoryCard(IconData icon, String title) {
    return Container(
      width: 88,
      margin: const EdgeInsets.only(right: Sizes.s12),
      padding: EdgeInsets.symmetric(horizontal: Sizes.s14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [BoxShadow(color: Colors.transparent, blurRadius: 0)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: CustomColors.green500, size: Sizes.s25),
          const SizedBox(height: 6),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: FontSize.f14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
