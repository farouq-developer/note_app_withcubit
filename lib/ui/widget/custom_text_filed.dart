import 'package:flutter/material.dart';
import 'package:note_app_new/ui/theme.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled(
      {super.key,
      required this.title,
      required this.hint,
      this.perfix,
      this.controller,
      this.ontap,
      this.read = false});
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? perfix;
  final bool read;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleStyle,
        ),
        const SizedBox(
          height: 4,
        ),
        TextField(
          onTap: ontap,
          readOnly: read,
          controller: controller,
          decoration: InputDecoration(
              suffixIcon: perfix,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              hintText: hint),
        )
      ],
    );
  }
}
