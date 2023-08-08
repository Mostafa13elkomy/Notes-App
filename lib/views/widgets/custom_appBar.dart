import 'package:flutter/material.dart';
import 'package:todo/views/widgets/custom_icon_button.dart';

class CustomAppBar extends StatelessWidget {
    const CustomAppBar({super.key});
  @override
Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const[
            Text('Notes',style: TextStyle(fontSize: 30),),
            Spacer(),
            CustomSearchButton()
          ],
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}