import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:todo/consts.dart';
import 'package:todo/views/widgets/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({
    super.key,
  });

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: KprimaryNotescolors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                
                  setState(() {});
                },
                child: ColorItem(
                  color: KprimaryNotescolors[index],
                  isSelected: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}

