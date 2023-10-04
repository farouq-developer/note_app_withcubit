import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app_new/cubit/task_cubit/task_cubit.dart';
import 'package:note_app_new/ui/add_new_task.dart';
import 'package:note_app_new/ui/theme.dart';
import 'package:note_app_new/ui/widget/botton.dart';

class AddTaskBar extends StatelessWidget {
  const AddTaskBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateFormat.yMd().format(DateTime.now()),
                style: subHedingStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Today',
                style: hedingStyle,
              )
            ],
          ),
          MyButton(
            label: '+ Add Task',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AddNewTask();
              }));
            },
          )
        ],
      ),
    );
  }
}
