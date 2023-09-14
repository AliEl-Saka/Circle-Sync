import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/text_fields_widgets/password_text_field_with_linear_indicator_widgets/linear_indecator_with_details_icon_widgets/details_icon.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email.dart/views/widgets/text_fields_widgets/password_text_field_with_linear_indicator_widgets/linear_indecator_with_details_icon_widgets/linear_indicator.dart';
import 'package:flutter/material.dart';

class LinearIndicatorWithDetailsIcon extends StatelessWidget {
  const LinearIndicatorWithDetailsIcon({
    super.key,
    required this.indicatorPercent,
    required this.currentColor,
  });

  final double indicatorPercent;
  final Color currentColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomLinearIndicator(
                indicatorPercent: indicatorPercent,
                currentColor: currentColor)),
        const DetailsIcon()
      ],
    );
  }
}
