import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:note_app_new/cubit/task_cubit/task_cubit.dart';
import 'package:note_app_new/cubit/theme_cubit/theme_cubit.dart';
import 'package:note_app_new/ui/theme.dart';
import 'package:note_app_new/ui/widget/add_task_bar.dart';
import 'package:note_app_new/ui/widget/botton.dart';
import 'package:note_app_new/ui/widget/date_task_bar.dart';
import 'package:note_app_new/ui/widget/text_contanier.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isdd = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<TaskCubit>(context).Createdata();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskCubit, TaskState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  BlocProvider.of<ThemeCubit>(context).toggleTheme();
                },
                child: BlocProvider.of<ThemeCubit>(context).isB
                    ? const Icon(
                        Icons.nightlight_round,
                        color: Colors.black,
                      )
                    : const Icon(
                        Icons.sunny,
                        color: Colors.white,
                      ),
              );
            }),
            actions: const [
              CircleAvatar(
                backgroundImage: AssetImage('images/user.png'),
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
          body: BlocBuilder<TaskCubit, TaskState>(
            builder: (context, state) {
              return const Column(
                children: [
                  AddTaskBar(),
                  SizedBox(
                    height: 10,
                  ),
                  DateTaskBar(),
                  SizedBox(
                    height: 10,
                  ),
                  TextContanier(),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
