import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

// class ThemeCubit extends Cubit<ThemeState> {
//   ThemeCubit() : super(ThemeState(ThemeMode.light));
//   bool isB = true;
//   void toggleTheme() {
//     if (isB) {
//       emit(ThemeState(ThemeMode.dark));
//       isB = false;
//     } else {
//       emit(ThemeState(ThemeMode.light));
//       isB = true;
//     }
//   }
// }

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
  static ThemeCubit get(context) => BlocProvider.of(context);
  bool isB = true;
  toggleTheme() {
    if (isB) {
      emit(ThemeDarkTheme());
      isB = false;
    } else {
      emit(ThemeLightTheme());
      isB = true;
    }
  }
}
