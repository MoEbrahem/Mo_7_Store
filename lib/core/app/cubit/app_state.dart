part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.themeChangeMode({required bool isDark}) = _ThemeChangeModeState;
  const factory AppState.languageAppChange({required Locale local}) = _languageChangeState;

}
