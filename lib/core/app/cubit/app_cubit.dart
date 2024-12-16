import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mo_7_store/core/services/pref_Keys.dart';
import 'package:mo_7_store/core/services/shared_pref.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
  bool isDark = true;
  String currentLanguageCode = 'en';

  void changeThemeMode({bool? sharedMode}) {
    if (sharedMode != null) {
      isDark = sharedMode;
      emit(AppState.themeChangeMode(isDark: isDark));
    } else {
      isDark = !isDark;
      SharedPref().setBoolean(PrefKeys.themeMode, isDark).then(
        (value) {
          emit(AppState.themeChangeMode(isDark: isDark));
        },
      );
    }
  }

  void getAppLanguage() {
    final res = SharedPref().containPreference(PrefKeys.currentLangCode)
        ? SharedPref().getString(PrefKeys.currentLangCode)
        : 'en';
    currentLanguageCode = res!;
    emit(
      AppState.languageAppChange(
        local: Locale(currentLanguageCode),
      ),
    );
  }

  void _changeLang(String langCode) {
    SharedPref().setString(PrefKeys.currentLangCode, langCode);
    currentLanguageCode = langCode;
    emit(AppState.languageAppChange(local: Locale(currentLanguageCode)));
  }
  
    toArabic() => _changeLang("ar");
    toEnglish() => _changeLang("en");
  
}
