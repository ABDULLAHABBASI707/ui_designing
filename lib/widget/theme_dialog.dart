import 'package:flutter/material.dart';
import '../main.dart';

class ThemeDialog {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Choose Theme'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.light_mode),
                title: const Text('Light Mode'),
                onTap: () {
                  themeModeNotifier.value = ThemeMode.light;
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.dark_mode),
                title: const Text('Dark Mode'),
                onTap: () {
                  themeModeNotifier.value = ThemeMode.dark;
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
