import 'package:circlesync/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class AuthViewsPadding extends StatelessWidget {
  const AuthViewsPadding({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.defaultSize! * 3,
        right: SizeConfig.defaultSize! * 3,
      ),
      child: child,
    );
  }
}
