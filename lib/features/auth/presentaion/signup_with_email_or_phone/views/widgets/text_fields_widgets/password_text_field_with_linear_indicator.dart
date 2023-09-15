import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/functions/password_strength_percentage_checker.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/text_fields_widgets/password_text_field_with_linear_indicator_widgets/linear_indicator_with_details_icon.dart';
import 'package:circlesync/features/auth/presentaion/signup_with_email_or_phone/views/widgets/text_fields_widgets/password_text_field_with_linear_indicator_widgets/password_text_field.dart';
import 'package:flutter/material.dart';

class PasswordTextFieldWithLinearIndicator extends StatefulWidget {
  const PasswordTextFieldWithLinearIndicator(
      {super.key, required this.obscureText});
  final bool obscureText;

  @override
  State<PasswordTextFieldWithLinearIndicator> createState() =>
      _PasswordTextFieldWithLinearIndicatorState();
}

class _PasswordTextFieldWithLinearIndicatorState
    extends State<PasswordTextFieldWithLinearIndicator> {
  //attribute for hiding password
  late bool _obscureText;
  //attributes for password linear indicator
  double indicatorPercent = 0.0;
  Color currentColor = Colors.transparent;
  Color lastValidColor = Colors.transparent;

  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
    passwordController.addListener(updateIndicatorPercent);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PasswordTextField(
          obscureText: _obscureText,
          passwordController: passwordController,
        ),
        const SizedBox(
          height: 4,
        ),
        LinearIndicatorWithDetailsIcon(
            indicatorPercent: indicatorPercent, currentColor: currentColor),
      ],
    );
  }

  void updateIndicatorPercent() {
    double newState =
        passwordStrengthPercentageChecker(password: passwordController.text);

    if (newState != indicatorPercent) {
      setState(() {
        if (newState == 0) {
          // If the new state is zero, use the last valid color
          lastValidColor = currentColor;
        } else {
          lastValidColor =
              currentColor; // Store the current color as the last valid color
        }
        indicatorPercent = newState;
        updateColor(); // Update the color
      });
    }
  }


  void updateColor() {
    if (indicatorPercent == 1 / 3) {
      currentColor = PrimarySwatchPallete.primarySwatch[200]!;
    } else if (indicatorPercent == 2 / 3) {
      currentColor = PrimarySwatchPallete.primarySwatch[400]!;
    } else if (indicatorPercent == 0) {
      // When going back to zero, use the last valid color
      currentColor = lastValidColor;
    }
    //strong password return primare color
    else {
      currentColor = ColorsPallete.primarySwatch;
    }
  }
}
