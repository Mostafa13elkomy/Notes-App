import 'package:flutter/material.dart';
import '../../consts.dart';

class CustomAddButton extends StatefulWidget {
  const CustomAddButton({super.key, this.onTap});
final void Function()? onTap;

  @override
  State<CustomAddButton> createState() => _CustomAddButtonState();
}

class _CustomAddButtonState extends State<CustomAddButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: KPrimaryColor,
              borderRadius: BorderRadius.circular(8)),
        child: const Center(
            child: Text(
          'Add',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold),
        )
        ),
      ),
    );
  }
}
