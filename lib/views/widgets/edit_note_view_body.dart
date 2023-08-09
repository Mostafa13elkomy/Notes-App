import 'package:flutter/material.dart';
import 'package:todo/views/widgets/cutom_text_feild.dart';
import 'custom_appBar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(height: 50,),
          CustomTextField(
            
            hint: 'title'),
          SizedBox(
            height: 16,),
          CustomTextField(
            hint: 'content',
          maxLines: 5,)
          
        ],
      ),
    );
  }
}