import 'package:flutter/material.dart';
import 'package:ui_designing/styles/themes/theme_dark.dart';
import 'package:ui_designing/styles/themes/theme_light.dart';
import 'package:ui_designing/weather_homepage.dart';
import 'home_page.dart';


void main() {
  runApp(const MyApp());
}

final ValueNotifier<ThemeMode> themeModeNotifier = ValueNotifier(ThemeMode.system,);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeModeNotifier,
      builder: (context, currentThemeMode, _) {
        return MaterialApp(
          title: 'Your App ',
          debugShowCheckedModeBanner: false,
          theme: ThemeLight.lightTheme,
          darkTheme: ThemeDark.darkTheme,
          themeMode: currentThemeMode,
          home:  SignUpPage(),
        );
      },
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final customColors = Theme.of(context).extension<AppColors>();
//
//     return Scaffold(
//       backgroundColor: customColors?.scafoldColor,
//       appBar: AppBar(title: const Text('Theming App')),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Hello Theme!', style: theme.textTheme.headlineMedium)
//                   .padSymmetric(ver: 16, hor: 12),
//
//               ElevatedButton(
//                 onPressed: () {
//                   themeModeNotifier.value = ThemeMode.light;
//                 },
//                 child: const Text('Light Theme'),
//               ).pad4(),
//
//               ElevatedButton(
//                 onPressed: () {
//                   themeModeNotifier.value = ThemeMode.dark;
//                 },
//                 child: const Text('Dark Theme'),
//               ).pad4(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

