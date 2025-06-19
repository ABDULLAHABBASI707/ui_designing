// import 'package:flutter/material.dart';
// import 'package:reactive_forms/reactive_forms.dart';
// import 'package:ui_designing/styles/colors/custom_colors.dart';
// import 'package:ui_designing/styles/extensions/extensions.dart';
// import 'package:ui_designing/styles/layouts/fonts.dart';
// import 'package:ui_designing/styles/layouts/sizes.dart';
//
// class SignUpPage extends StatefulWidget {
//   const SignUpPage({super.key});
//
//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }
//
// class _SignUpPageState extends State<SignUpPage> {
//   final form = FormGroup({
//     'firstName': FormControl<String>(),
//     'lastName': FormControl<String>(),
//     'email': FormControl<String>(),
//     'password': FormControl<String>(),
//     'confirmPassword': FormControl<String>(),
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(centerTitle: true, title: const Text('Sign Up')),
//       body: ReactiveForm(
//         formGroup: form,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               ReactiveTextField<String>(
//                 formControlName: 'firstName',
//                 decoration:  InputDecoration(
//                   labelText: 'First Name',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//               ).padAll(Sizes.s16),
//
//               ReactiveTextField<String>(
//                 formControlName: 'lastName',
//                 decoration:  InputDecoration(
//                   labelText: 'Last Name',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//               ).padAll(Sizes.s16),
//
//               ReactiveTextField<String>(
//                 formControlName: 'email',
//                 decoration:  InputDecoration(
//                   labelText: 'Email',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//               ).padAll(Sizes.s16),
//
//               ReactiveTextField<String>(
//                 formControlName: 'password',
//                 obscureText: true,
//                 decoration:  InputDecoration(
//                   labelText: 'Password',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//               ).padAll(Sizes.s16),
//
//               ReactiveTextField<String>(
//                 formControlName: 'confirmPassword',
//                 obscureText: true,
//                 decoration:  InputDecoration(
//                   labelText: 'Confirm Password',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//               ).padAll(Sizes.s16),
//
//               const SizedBox(height: Sizes.s20),
//
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   minimumSize: const Size.fromHeight(50),
//                   backgroundColor: CustomColors.amber600,
//                   textStyle: const TextStyle(fontSize: FontSize.f18),
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: Sizes.s8,
//                     vertical: Sizes.s3,
//                   ),
//                 ),
//                 child: const Text(
//                   'Sign Up',
//                   style: TextStyle(color: CustomColors.white),
//                 ),
//               ),
//             ],
//           ).padAll(Sizes.s16),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:ui_designing/styles/colors/colors_theme_ext.dart';
import 'package:ui_designing/styles/colors/custom_colors.dart';
import 'package:ui_designing/styles/extensions/extensions.dart';
import 'package:ui_designing/styles/layouts/fonts.dart';
import 'package:ui_designing/styles/layouts/sizes.dart';
import 'package:ui_designing/styles/typography/typography.dart';
import 'package:ui_designing/weather_homepage.dart';
import 'package:ui_designing/widget/theme_dialog.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final form = FormGroup({
    'firstName': FormControl<String>(),
    'lastName': FormControl<String>(),
    'email': FormControl<String>(),
    'password': FormControl<String>(),
    'confirmPassword': FormControl<String>(),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).extension<AppColors>()?.appbarColor,
        //titleTextStyle: Theme.of(context).extension<CustomTextStyle>()?.headlineLargeGreen,
        centerTitle: true,
        title: Text(
          'Sign Up',
          style: Theme.of(context).extension<CustomTextStyle>()?.headlineLargeGreen,
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert),
            onSelected: (value) {
              if (value == 'theme') ThemeDialog.show(context);
            },
            itemBuilder: (context) => const [
              PopupMenuItem(value: 'theme', child: Text('Change Theme')),
            ],
          ),
        ],
      ),
      body: ReactiveForm(
        formGroup: form,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ReactiveTextField<String>(
                formControlName: 'firstName',
                decoration: _inputDecoration(context, 'First Name'),
              ).padAll(Sizes.s16),
              ReactiveTextField<String>(
                formControlName: 'lastName',
                decoration: _inputDecoration(context, 'Last Name'),
              ).padAll(Sizes.s16),
              ReactiveTextField<String>(
                formControlName: 'email',
                decoration: _inputDecoration(context, 'Email'),
              ).padAll(Sizes.s16),
              ReactiveTextField<String>(
                formControlName: 'password',
                obscureText: true,
                decoration: _inputDecoration(context, 'Password'),
              ).padAll(Sizes.s16),
              ReactiveTextField<String>(
                formControlName: 'confirmPassword',
                obscureText: true,
                decoration: _inputDecoration(context, 'Confirm Password'),
              ).padAll(Sizes.s16),
              const SizedBox(height: Sizes.s20),
              ElevatedButton(
                onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherHomePage()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: CustomColors.amber600,
                  textStyle: const TextStyle(fontSize: FontSize.f18),
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.s8,
                    vertical: Sizes.s3,
                  ),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: CustomColors.white),
                ),
              ),
            ],
          ).padAll(Sizes.s16),
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(BuildContext context, String label) {
    final appColors = Theme.of(context).extension<AppColors>();

    return InputDecoration(
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: appColors?.primaryColor ?? Colors.grey,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: appColors?.primaryColor ?? Colors.blue,
          width: 3,
        ),
      ),
    );
  }
}

