import 'package:circlesync/features/settings/presentaion/maneger/themeCubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = BlocProvider.of<ThemeCubit>(context);
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              theme.toggleTheme();
            },
            child: const Text(
              'Change Theme',
              style: TextStyle(fontSize: 20),
            )),
      ),
    );
  }
}
