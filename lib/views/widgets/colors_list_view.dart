
import 'package:flutter/material.dart';
import 'package:todo/views/widgets/color_item.dart';

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
        return const ColorItem();
      }),
    );
  }
}
