part of 'theme_cubit.dart';

@immutable
sealed class ThemeState {}

final class ThemeInitial extends ThemeState {}

final class ThemeLightTheme extends ThemeState {}

final class ThemeDarkTheme extends ThemeState {}




// class ThemeState {
//   final ThemeMode themeData;

//   ThemeState(this.themeData);
// }