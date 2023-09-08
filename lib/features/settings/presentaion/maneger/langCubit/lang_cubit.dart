import 'package:circlesync/core/utils/prefs_keys.dart';
import 'package:circlesync/features/settings/presentaion/maneger/langCubit/lang_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageCubit extends Cubit<Languages> {
  LanguageCubit() : super(Languages.en) {
    getLangFromPref();
  }

  void changeLanguage() {
    if (state == Languages.en) {
      emit(Languages.ar);
      saveLangToPrefs(state);
    } else {
      emit(Languages.en);
      saveLangToPrefs(state);
    }
  }

  Future<void> saveLangToPrefs(Languages lang) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final language = lang == Languages.en ? 'En' : 'Ar';
    await prefs.setString(PrefsKeys.langKey, language);
  }

  Future<void> getLangFromPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedLangString = prefs.getString(PrefsKeys.langKey) ?? 'En';
    final savedLang = savedLangString == 'En' ? Languages.en : Languages.ar;
    emit(savedLang);
  }
}

class PrefKeys {
}
