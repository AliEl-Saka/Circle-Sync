import 'package:circlesync/core/utils/color_palette.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.onchanged,
      required this.hintText,
      required this.validator});
  final String hintText;
  final Function(String)? onchanged;
  final String? Function(String?)? validator;
  final usernamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onChanged: onchanged,
          style: const TextStyle(fontSize: 20),
          validator: validator,
          decoration: InputDecoration(
            filled: true,
            fillColor: ColorsPallete.lightGray,
            errorStyle: const TextStyle(fontSize: 16),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(color: Colors.black.withOpacity(0.5))),
            focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(color: ColorsPallete.primarySwatch)),
            hintText: hintText,
            hintStyle: const TextStyle(
                color: Color(0xff767676),
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}