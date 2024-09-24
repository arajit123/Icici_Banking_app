  import 'package:banking_app/constant/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:banking_app/constant/font_theme.dart';
// import 'package:banking_app/constant/theme.dart';

class CustomDialog {
  static void show({
    required BuildContext context,
    required String title,
    required String content,
    String? buttonLabel,
    VoidCallback? onButtonPressed,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: IciciBankTheme.backgroundColor,
          title: Text(
            title,
            style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
              color: IciciBankTheme.darkGray,
            ),
          ),
          content: Text(
            content,
            style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(
              color: IciciBankTheme.textColor,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (onButtonPressed != null) {
                  onButtonPressed();
                }
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text(
                buttonLabel ?? 'Ok',
                style: IciciBankFontTheme.textTheme.labelMedium!.copyWith(
                  color: IciciBankTheme.blueTextColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
