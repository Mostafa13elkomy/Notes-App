import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:todo/consts.dart';
import 'package:todo/models/note_model.dart';
import 'package:todo/views/widgets/color_item.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex =KprimaryNotescolors.indexOf(Color(widget.note.color));
    super.initState();
  }

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
                  widget.note.color = KprimaryNotescolors[index].value;
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
