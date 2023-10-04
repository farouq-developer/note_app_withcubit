import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app_new/cubit/task_cubit/task_cubit.dart';
import 'package:note_app_new/ui/theme.dart';
import 'package:note_app_new/ui/widget/botton.dart';
import 'package:note_app_new/ui/widget/custom_text_filed.dart';

class AddNewTask extends StatefulWidget {
  const AddNewTask({super.key});

  @override
  State<AddNewTask> createState() => _AddNewTaskState();
}

class _AddNewTaskState extends State<AddNewTask> {
  DateTime selectedate = DateTime.now();
  String endTime = '11:30 PM';
  String startTime = DateFormat('hh:mm a').format(DateTime.now()).toString();
  TextEditingController time = TextEditingController();
  TextEditingController endtime = TextEditingController();
  TextEditingController titlecontrol = TextEditingController();
  TextEditingController notecontrol = TextEditingController();

  TextEditingController remdinercontrol = TextEditingController();
  TextEditingController repeatcontrol = TextEditingController();
  int selectedRemid = 5;
  List<int> remidList = [5, 10, 15, 20, 25];

  String selectedRepeat = 'None';
  List<String> repeatList = [
    'None',
    'Daily',
    'Weekly',
    'Monthly',
  ];
  int selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Builder(builder: (context) {
            return GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ));
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
        body: BlocConsumer<TaskCubit, TaskState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add Task',
                        style: hedingStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextFiled(
                        controller: titlecontrol,
                        title: 'Title',
                        hint: 'Enter title here',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTextFiled(
                        controller: notecontrol,
                        title: 'Note',
                        hint: 'Enter Note here',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTextFiled(
                        read: true,
                        title: 'Date',
                        hint: DateFormat('yyyy-MM-dd').format(selectedate),
                        perfix: IconButton(
                            onPressed: () async {
                              DateTime? _picker = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2015),
                                  lastDate: DateTime(2121));
                              if (_picker != null) {
                                setState(() {
                                  selectedate = _picker;
                                  BlocProvider.of<TaskCubit>(context)
                                      .formation1(
                                          DateFormat.yMd().format(selectedate));
                                });
                              } else {
                                print('object');
                              }
                            },
                            icon: Icon(Icons.calendar_month)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextFiled(
                              controller: time,
                              read: true,
                              ontap: () {
                                showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now())
                                    .then((value) {
                                  time.text = value!.format(context).toString();
                                });
                              },
                              title: 'Start Time',
                              hint: startTime,
                              perfix: Icon(Icons.access_time),
                            ),
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            child: CustomTextFiled(
                              controller: endtime,
                              read: true,
                              ontap: () {
                                showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now())
                                    .then((value) {
                                  endtime.text =
                                      value!.format(context).toString();
                                });
                              },
                              title: 'End Time',
                              hint: endTime,
                              perfix: const Icon(Icons.access_time),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTextFiled(
                        controller: remdinercontrol,
                        read: true,
                        title: 'Remind',
                        hint: '$selectedRemid muinte erarly',
                        perfix: DropdownButton(
                          elevation: 4,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey,
                          ),
                          iconSize: 32,
                          underline: Container(
                            height: 0,
                          ),
                          onChanged: (value) {
                            setState(() {});
                            selectedRemid = int.parse(value!);
                          },
                          items: remidList
                              .map<DropdownMenuItem<String>>((int value) {
                            return DropdownMenuItem<String>(
                              value: value.toString(),
                              child: Text(value.toString()),
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomTextFiled(
                        controller: repeatcontrol,
                        read: true,
                        title: 'Repeat',
                        hint: '$selectedRepeat  ',
                        perfix: DropdownButton(
                          elevation: 0,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.grey,
                          ),
                          iconSize: 32,
                          underline: Container(
                            height: 0,
                          ),
                          onChanged: (value) {
                            setState(() {});
                            selectedRepeat = value!;
                          },
                          items: repeatList
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: Colors.grey),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Color',
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Wrap(
                                  children: List<Widget>.generate(
                                3,
                                (index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedColor = index;
                                      });
                                    },
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 4.0),
                                      child: CircleAvatar(
                                        radius: 14,
                                        backgroundColor: index == 0
                                            ? primaryClr
                                            : index == 1
                                                ? pinkColr
                                                : yellowClr,
                                        child: selectedColor == index
                                            ? const Icon(Icons.done,
                                                color: Colors.white, size: 16)
                                            : Container(),
                                      ),
                                    ),
                                  );
                                },
                              ))
                            ],
                          ),
                          MyButton(
                            label: 'Create Task',
                            onTap: () {
                              if (titlecontrol.text.isNotEmpty &&
                                  notecontrol.text.isNotEmpty) {
                                BlocProvider.of<TaskCubit>(context).insertData(
                                    titlecontrol.text,
                                    notecontrol.text,
                                    // formattedDate,
                                    DateFormat.yMd().format(selectedate),
                                    // BlocProvider.of<TaskCubit>(context)
                                    //     .selectedate
                                    //     .toString(),
                                    time.text,
                                    endtime.text,
                                    selectedColor,
                                    selectedRemid,
                                    selectedRepeat,
                                    BlocProvider.of<TaskCubit>(context)
                                        .iscompleted!);
                                Navigator.pop(context);
                              } else if (titlecontrol.text.isEmpty ||
                                  notecontrol.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('enter the task')));
                              }
                            },
                          ),
                        ],
                      ),
                    ]),
              ),
            );
          },
        ));
  }
}
