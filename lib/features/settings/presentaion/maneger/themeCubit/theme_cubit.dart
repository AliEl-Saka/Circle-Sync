import 'package:circlesync/core/utils/prefs_keys.dart';
import 'package:circlesync/features/settings/presentaion/maneger/themeCubit/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(AppThemeData.lightTheme) {
    getThemeFromPref();
  }

  void toggleTheme() {
    emit(state.brightness == Brightness.light
        ? AppThemeData.darkTheme
        : AppThemeData.lightTheme);
    saveThemeToPref(state);
  }

 

  Future<void> getThemeFromPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedThemeIndex =
        prefs.getInt(PrefsKeys.themeKey) ?? 0; // Default to light theme
    final savedTheme =
        savedThemeIndex == 0 ? AppThemeData.lightTheme : AppThemeData.darkTheme;
    emit(savedTheme);
  }

  Future<void> saveThemeToPref(ThemeData theme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final themeIndex = theme == AppThemeData.lightTheme ? 0 : 1;
    await prefs.setInt(PrefsKeys.themeKey, themeIndex);
  }
  
}
