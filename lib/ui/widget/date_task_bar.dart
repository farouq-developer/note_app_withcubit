import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:note_app_new/cubit/task_cubit/task_cubit.dart';
import 'package:note_app_new/ui/theme.dart';

DateTime selecteddate = DateTime.now();
String formation = DateFormat.yMd().format(selecteddate);

class DateTaskBar extends StatefulWidget {
  const DateTaskBar({
    super.key,
  });

  @override
  State<DateTaskBar> createState() => _DateTaskBarState();
}

class _DateTaskBarState extends State<DateTaskBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(left: 20),
          child: DatePicker(
            DateTime.now(),
            height: 100,
            width: 80,
            initialSelectedDate: DateTime.now(),
            selectedTextColor: Colors.white,
            selectionColor: primaryClr,
            dateTextStyle: GoogleFonts.lato(
              textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            ),
            dayTextStyle: GoogleFonts.lato(
              textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            ),
            monthTextStyle: GoogleFonts.lato(
              textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            ),
            onDateChange: (date) {
              setState(() {
                selecteddate = date;
                BlocProvider.of<TaskCubit>(context)
                    .formation1(DateFormat.yMd().format(selecteddate));

                print(
                    '${BlocProvider.of<TaskCubit>(context).formation} = datetask');
              });
            },
          ),
        );
      },
    );
  }
}
