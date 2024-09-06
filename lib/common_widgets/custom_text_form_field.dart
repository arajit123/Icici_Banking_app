// import 'package:banking_app/common_widgets/custom_list_tile.dart';
import 'package:banking_app/constant/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType textInputType;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.textInputType = TextInputType.number,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _controller = TextEditingController();
  bool isComplete = false; // Track if input is complete (4 digits)

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        isComplete = _controller.text.length == 4; // Check if 4 digits entered
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      obscureText: widget.obscureText,
      keyboardType: widget.textInputType,
      inputFormatters: [
        LengthLimitingTextInputFormatter(4), // Limits the input to 4 digits
        FilteringTextInputFormatter.digitsOnly, // Allows only digits
      ],
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle:  const TextStyle(color: Colors.grey), // Customize hint color
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.dg),
          borderSide: BorderSide(
              color: isComplete ? Colors.green : IciciBankTheme.darkGray), // Blue when incomplete, green when complete
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.dg),
          borderSide: BorderSide(
              color: isComplete ? Colors.green : Colors.amber, width: 1), // Amber when focused, green when complete
        ),
        filled: true, // Optional: Background color
        fillColor: Colors.white, // Optional: Background color when not focused
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
