import 'package:banking_app/constant/font_theme.dart';
import 'package:flutter/material.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String text;

  const CommonAppbar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color(0xFFf6711d),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        text,
        style: IciciBankFontTheme.textTheme.labelSmall!.copyWith(fontSize: 18,color: Colors.white,fontWeight: FontWeight.normal)
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.help_outline, color: Colors.white),
          onPressed: () {
            // Add your action for the help icon here
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0); // Set the height of the AppBar
}
