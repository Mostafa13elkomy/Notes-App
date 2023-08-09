import 'package:flutter/material.dart';
import 'package:todo/consts.dart';
import 'custom_add_button.dart';
import 'cutom_text_feild.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children:  [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
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

