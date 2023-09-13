import 'package:auto_size_text/auto_size_text.dart';
import 'package:circlesync/core/utils/functions/get_text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.cardIcon,
      required this.cardName,
      this.textColor = Colors.black,
      this.backGroundColor,
      required this.onTap});
  final String? cardIcon;
  final String cardName;
  final Color textColor;
  final Color? backGroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 65,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: backGroundColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
                border: Border.all(color: Colors.black.withOpacity(0.3))),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (cardIcon != null) // Conditionally display the icon
                    Image.asset(
                      cardIcon!,
                      height: 30,
                    ),
                  if (cardIcon != null) // Add a SizedBox if icon is displayed
                    const SizedBox(
                      width: 10,
                    ),
                  Flexible(
                    child: AutoSizeText(
                      cardName,
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: getTextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: textColor),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
