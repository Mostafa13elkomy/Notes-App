import 'package:flutter/material.dart';
import 'package:todo/views/widgets/custom_appBar.dart';
import 'package:todo/views/widgets/note_item.dart';

import 'notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}


