import 'package:flutter/material.dart';
import 'package:todo/consts.dart';

class CutomTextFeild extends StatelessWidget {
  const CutomTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'title',
        hintStyle:const TextStyle(
          color: KPrimaryColor
        ),
          border: buildBordrer(),
          enabledBorder: buildBordrer(),
          focusedBorder: buildBordrer(KPrimaryColor)),
          
    );
  }

  OutlineInputBorder buildBordrer([color]) {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color:color ?? Colors.white
          ));
  }
}
