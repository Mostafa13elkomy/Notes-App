import 'package:flutter/material.dart';
import 'package:todo/views/widgets/custom_appBar.dart';

class NoteViewBody  extends StatelessWidget {
  const NoteViewBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: const [
          SizedBox(height: 50,),
          CustomAppBar()
    
        ],
      ),
    );
  }
}
