import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/functions/is_arabic.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoBackIcon extends StatelessWidget {
  const GoBackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isArabic() ? Alignment.centerRight : Alignment.centerLeft,
      child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            isArabic()
                ? FontAwesomeIcons.arrowRight
                : FontAwesomeIcons.arrowLeft,
            size: 28,
            color: ColorsPallete.darkGray,
          )),
    );
  }
}