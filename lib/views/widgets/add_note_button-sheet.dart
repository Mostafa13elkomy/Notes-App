import 'package:flutter/material.dart';
import 'package:todo/consts.dart';
import 'custom_add_button.dart';
import 'cutom_text_feild.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 32,
            ),
            CutomTextField(
              hint: 'title',
            ),
            SizedBox(
              height: 16,
            ),
            CutomTextField(
              hint: 'content',
              maxLines: 5,
            ),
            SizedBox(
              height: 100,),
            CustomAddButton(),
            SizedBox(
              height: 20,)
          ],
        ),
      ),
    );
  }
}

