import 'package:circlesync/core/utils/app_router.dart';
import 'package:circlesync/features/settings/presentaion/maneger/themeCubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ThemeCubit(),
    child: CircleSync(
      appRouter: AppRouter(),
    ),
  ));
}

class CircleSync extends StatelessWidget {
  const CircleSync({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: state,
          onGenerateRoute: appRouter.generateRoutes,
        );
      },
    );
  }
}
