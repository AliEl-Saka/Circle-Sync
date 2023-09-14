import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.onchanged,
      required this.hintText,
      required this.prefixIcon,
      this.obscureText,
      this.suffixIcon,
      required this.controller,
      required this.validator});
  final String hintText;
  final Function(String)? onchanged;
  final String? Function(String?)? validator;
  final Icon prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        TextFormField(
          onChanged: onchanged,
          controller: controller,
          style: getTextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
          validator: validator,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
              filled: true,
              fillColor: ColorsPallete.lightGray,
              errorStyle: const TextStyle(fontSize: 20),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.5))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: ColorsPallete.primarySwatch)),
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              hintStyle: getTextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: const Color(0xff767676),
              )),
        ),
      ],
    );
  }
}
