import 'package:circlesync/core/utils/app_router.dart';
import 'package:circlesync/features/settings/presentaion/maneger/langCubit/lang_cubit.dart';
import 'package:circlesync/features/settings/presentaion/maneger/langCubit/lang_state.dart';
import 'package:circlesync/features/settings/presentaion/maneger/themeCubit/theme_cubit.dart';
import 'package:circlesync/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => ThemeCubit(),
      ),
      BlocProvider(
        create: (context) => LanguageCubit(),
      ),
    ],
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
      builder: (context, themeState) {
        return BlocBuilder<LanguageCubit, Languages>(
          builder: (context, langState) {
            return MaterialApp(
              // useInheritedMediaQuery: true,
              // builder: DevicePreview.appBuilder,
              locale: Locale(langState == Languages.en ? 'ar' : 'ar'),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              theme: themeState,
              onGenerateRoute: appRouter.generateRoutes,
            );
          },
        );
      },
    );
  }
}
