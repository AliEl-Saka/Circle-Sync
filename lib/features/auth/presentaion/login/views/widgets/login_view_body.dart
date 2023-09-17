import 'package:flutter/material.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.sizeOf(context).height / 2,
        width: MediaQuery.sizeOf(context).width / 2,
        color: Colors.indigo,
      ),
    );
  }
}
