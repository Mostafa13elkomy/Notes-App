import 'package:flutter/material.dart';
import 'package:todo/consts.dart';

class CutomTextField extends StatelessWidget {
  const CutomTextField({super.key, required this.hint,  this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: KPrimaryColor),
          border: buildBordrer(),
          enabledBorder: buildBordrer(),
          focusedBorder: buildBordrer(KPrimaryColor)),
    );
  }

  OutlineInputBorder buildBordrer([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
