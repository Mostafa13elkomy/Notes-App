import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(4),
      child: CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 38,
      ),
    );
  }
}