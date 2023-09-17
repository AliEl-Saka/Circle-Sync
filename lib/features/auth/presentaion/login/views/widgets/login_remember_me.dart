import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class LoginRememberMe extends StatefulWidget {
  const LoginRememberMe({
    super.key,
  });

  @override
  State<LoginRememberMe> createState() => _LoginRememberMeState();
}

class _LoginRememberMeState extends State<LoginRememberMe> {
  late bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Checkbox(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              value: ischecked,
              onChanged: (value) {
                setState(() {
                  ischecked = value ?? false;
                });
              }),
          Text(
            S.of(context).LoginViewRememberMe,
            style: getTextStyle(
                fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
          )
        ],
      ),
    );
  }
}
