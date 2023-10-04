import 'package:flutter/material.dart';
import 'package:note_app_new/ui/theme.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.label, this.onTap});
  final String label;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: primaryClr),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
