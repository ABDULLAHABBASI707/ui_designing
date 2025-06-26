import 'package:flutter/material.dart';
import 'package:ui_designing/styles/colors/colors.dart';
import 'package:ui_designing/styles/extensions/extensions.dart';
import 'package:ui_designing/styles/layouts/fonts.dart';
import 'package:ui_designing/widget/theme_dialog.dart';
import '../styles/layouts/sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: CustomColors.white,
              elevation: 0,
              shape: const CircleBorder(),
            ),
            child: const Icon(
              Icons.arrow_back,
              color: CustomColors.black,
              size: Sizes.s20,
            ),
          ).padAll(Sizes.s10),

          const Spacer(),

          Text(
            title,
            style: TextStyle(
              fontSize: FontSize.f16,
              fontWeight: FontWeight.w600,
            ),
          ),

          const Spacer(),

          PopupMenuButton<String>(
            icon:  Icon(
              Icons.more_vert,
              color:Theme.of(context).extension<AppColors>()?.popumenbtn,
              size: Sizes.s20,
            ),
            onSelected: (value) {
              if (value == 'theme') ThemeDialog.show(context);
            },
            itemBuilder: (context) => const [
              PopupMenuItem(
                value: 'theme',
                child: Text('Change Theme'),
              ),
            ],
          ).padAll(Sizes.s10),
        ],
      ).padSymmetric(hor: Sizes.s5, ver: Sizes.s14),
    );
  }
}
