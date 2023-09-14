import 'package:circlesync/core/utils/color_palette.dart';
import 'package:circlesync/core/utils/size_config.dart';
import 'package:circlesync/core/widgets/auth_views_padding.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  const CustomPinCodeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth!,
      child: AuthViewsPadding(
        child: PinCodeTextField(
          appContext: context,
          length: 6,
          obscureText: false,
          cursorColor: ColorsPallete.primarySwatch,
          animationType: AnimationType.scale,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 65,
            fieldWidth: 50,
            borderWidth: 1,
            activeFillColor: Colors.white,
            activeColor: ColorsPallete.primarySwatch,
            inactiveColor: ColorsPallete.primarySwatch,
            inactiveFillColor: const Color.fromARGB(255, 239, 238, 238),
            selectedColor: ColorsPallete.primarySwatch,
            selectedFillColor: const Color.fromARGB(255, 222, 222, 222),
          ),
          animationDuration: const Duration(milliseconds: 300),
          enableActiveFill: true,
          onCompleted: (code) {},
        ),
      ),
    );
  }
}
