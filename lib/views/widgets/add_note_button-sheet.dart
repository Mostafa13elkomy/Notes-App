import 'package:flutter/material.dart';
import 'cutom_text_feild.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 32,
          ),
          CutomTextField(
            hint: 'title',
          ),
          SizedBox(
            height: 16,),
          CutomTextField(
            hint: 'content',
            maxLines: 5,
        )
        ],
      ),
    );
  }
}
