import 'package:circlesync/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CircleSync(
    appRouter: AppRouter(),
  ));
}

class CircleSync extends StatelessWidget {
  const CircleSync({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoutes,
    );
  }
}
