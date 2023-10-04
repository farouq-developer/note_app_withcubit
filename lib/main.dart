import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_new/cubit/task_cubit/task_cubit.dart';
import 'package:note_app_new/cubit/theme_cubit/theme_cubit.dart';
import 'package:note_app_new/ui/home_page.dart';
import 'package:note_app_new/ui/theme.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<ThemeCubit>(
        create: (context) => ThemeCubit(),
      ),
      BlocProvider<TaskCubit>(create: (context) => TaskCubit())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = true;
    return BlocConsumer<ThemeCubit, ThemeState>(
      listener: (context, state) {
        if (state is ThemeLightTheme) {
          isDark = true;
        } else {
          isDark = false;
        }
      },
      builder: (context, state) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Themes.light,
            themeMode: isDark ? ThemeMode.light : ThemeMode.dark,
            darkTheme: Themes.dark,
            home: HomePage());
      },
    );
  }
}
