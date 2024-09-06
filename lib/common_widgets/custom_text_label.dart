import 'package:banking_app/constant/color_theme.dart';
import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';

class CustomTextLabel extends StatelessWidget {
  final String label;
  final TextStyle? style;

  const CustomTextLabel({
    Key? key,
    required this.label,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: style ??
          IciciBankFontTheme.textTheme.bodyLarge!.copyWith(
            color: IciciBankTheme.blueTextColor,
          ),
    );
  }
}