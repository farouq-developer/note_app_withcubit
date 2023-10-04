import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_new/cubit/task_cubit/task_cubit.dart';
import 'package:note_app_new/ui/theme.dart';

class ShowBottomSheet extends StatelessWidget {
  const ShowBottomSheet({super.key, this.index});
  final int? index;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.of<TaskCubit>(context).newtask[index!]["iscompleted"] ==
            1
        ? Container(
            height: BlocProvider.of<TaskCubit>(context).newtask[index!]
                        ['iscompleted'] ==
                    1
                ? MediaQuery.of(context).size.height * .24
                : MediaQuery.of(context).size.height * .32,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Container(
                    height: 6,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<TaskCubit>(context).deletetask(
                          BlocProvider.of<TaskCubit>(context).newtask[index!]
                              ['id']);
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: pinkColr,
                      ),
                      child: Center(
                          child: Text(
                        'Delete Task',
                        style: hedingStyle,
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Text(
                        ' Done',
                        style: hedingStyle,
                      )),
                    ),
                  ),
                ],
              ),
            ),
          )
        : Container(
            height: BlocProvider.of<TaskCubit>(context).newtask[index!]
                        ['iscompleted'] ==
                    1
                ? MediaQuery.of(context).size.height * .24
                : MediaQuery.of(context).size.height * .32,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Container(
                    height: 6,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<TaskCubit>(context).updataiscompleted(
                          id: BlocProvider.of<TaskCubit>(context)
                              .newtask[index!]["id"]);
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: bluisClr,
                      ),
                      child: Center(
                          child: Text(
                        ' Task Compelet',
                        style: hedingStyle,
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<TaskCubit>(context).deletetask(
                          BlocProvider.of<TaskCubit>(context).newtask[index!]
                              ['id']);
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: pinkColr,
                      ),
                      child: Center(
                          child: Text(
                        'Delete Task',
                        style: hedingStyle,
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Text(
                        ' Done',
                        style: hedingStyle,
                      )),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
