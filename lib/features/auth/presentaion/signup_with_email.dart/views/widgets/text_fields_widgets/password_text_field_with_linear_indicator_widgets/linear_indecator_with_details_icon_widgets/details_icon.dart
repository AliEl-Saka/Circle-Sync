import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/text_fields_widgets/password_text_field_with_linear_indicator_widgets/linear_indecator_with_details_icon_widgets/details_icon_widgets/password_dialog.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsIcon extends StatelessWidget {
  const DetailsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return const PasswordDialog();
              },
            );
          },
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: ColorsPallete.primarySwatch, shape: BoxShape.circle),
            child: const Icon(
              FontAwesomeIcons.exclamation,
              color: Colors.white,
              size: 20,
            ),
          ),
        );
  }
}