import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';

class PasswordDialog extends StatelessWidget {
  const PasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: const PasswordDialogContent(),
    );
  }
}

class PasswordDialogContent extends StatelessWidget {
  const PasswordDialogContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 12),
          margin: const EdgeInsets.only(top: 13.0, right: 8.0),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 0.0,
                  offset: Offset(0.0, 0.0),
                ),
              ]),
          child: Text(
            S.of(context).SignUpWithEmailViewLinearIndicator,
            textAlign: TextAlign.center,
            style: getTextStyle(
                fontSize: 26, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        Positioned(
          top: 0.0,
          right: 0.0,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
            backgroundColor: Colors.white,
            mini: true,
            elevation: 5.0,
            child: const Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
