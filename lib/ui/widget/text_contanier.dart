import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:note_app_new/cubit/task_cubit/task_cubit.dart';
import 'package:note_app_new/ui/add_new_task.dart';
import 'package:note_app_new/ui/theme.dart';
import 'package:note_app_new/ui/widget/date_task_bar.dart';
import 'package:note_app_new/ui/widget/show_bottom_sheet.dart';
import 'package:note_app_new/ui/widget/tasktile.dart';

class TextContanier extends StatelessWidget {
  const TextContanier({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskCubit, TaskState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  // return AnimationConfiguration.staggeredList(
                  //     position: index,
                  //     child: SlideAnimation(
                  //       child: FadeInAnimation(
                  //         child: Row(
                  //           children: [
                  //             GestureDetector(
                  //               onTap: () {
                  //                 showModalBottomSheet(
                  //                     context: context,
                  //                     builder: (context) {
                  //                       return ShowBottomSheet(
                  //                         index: index,
                  //                       );
                  //                     });
                  //               },
                  //               child: Container(
                  //                 padding: const EdgeInsets.symmetric(
                  //                     horizontal: 20),
                  //                 width: MediaQuery.of(context).size.width,
                  //                 margin: const EdgeInsets.only(bottom: 12),
                  //                 child: Container(
                  //                   padding: const EdgeInsets.all(16),
                  //                   //  width: SizeConfig.screenWidth * 0.78,
                  //                   decoration: BoxDecoration(
                  //                     borderRadius: BorderRadius.circular(16),
                  //                     color: _getBGClr(
                  //                         BlocProvider.of<TaskCubit>(context)
                  //                                 .newtask[index]['color'] ??
                  //                             0),
                  //                   ),
                  //                   child: Row(children: [
                  //                     Expanded(
                  //                       child: Column(
                  //                         crossAxisAlignment:
                  //                             CrossAxisAlignment.start,
                  //                         children: [
                  //                           Text(
                  //                             BlocProvider.of<TaskCubit>(
                  //                                             context)
                  //                                         .newtask[index]
                  //                                     ['title'] ??
                  //                                 "",
                  //                             style: GoogleFonts.lato(
                  //                               textStyle: const TextStyle(
                  //                                   fontSize: 16,
                  //                                   fontWeight: FontWeight.bold,
                  //                                   color: Colors.white),
                  //                             ),
                  //                           ),
                  //                           const SizedBox(
                  //                             height: 12,
                  //                           ),
                  //                           Row(
                  //                             crossAxisAlignment:
                  //                                 CrossAxisAlignment.center,
                  //                             children: [
                  //                               Icon(
                  //                                 Icons.access_time_rounded,
                  //                                 color: Colors.grey[200],
                  //                                 size: 18,
                  //                               ),
                  //                               const SizedBox(width: 4),
                  //                               Text(
                  //                                 "${BlocProvider.of<TaskCubit>(context).newtask[index]['starttime']} - ${BlocProvider.of<TaskCubit>(context).newtask[index]['endtime']}",
                  //                                 style: GoogleFonts.lato(
                  //                                   textStyle: TextStyle(
                  //                                       fontSize: 13,
                  //                                       color:
                  //                                           Colors.grey[100]),
                  //                                 ),
                  //                               ),
                  //                             ],
                  //                           ),
                  //                           const SizedBox(height: 12),
                  //                           Text(
                  //                             BlocProvider.of<TaskCubit>(
                  //                                         context)
                  //                                     .newtask[index]['note'] ??
                  //                                 "",
                  //                             style: GoogleFonts.lato(
                  //                               textStyle: TextStyle(
                  //                                   fontSize: 15,
                  //                                   color: Colors.grey[100]),
                  //                             ),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     ),
                  //                     Container(
                  //                       margin: const EdgeInsets.symmetric(
                  //                           horizontal: 10),
                  //                       height: 60,
                  //                       width: 0.5,
                  //                       color:
                  //                           Colors.grey[200]!.withOpacity(0.7),
                  //                     ),
                  //                     RotatedBox(
                  //                       quarterTurns: 3,
                  //                       child: Text(
                  //                         BlocProvider.of<TaskCubit>(context)
                  //                                         .newtask[index]
                  //                                     ['iscompleted'] ==
                  //                                 1
                  //                             ? "COMPLETED"
                  //                             : "TODO",
                  //                         style: GoogleFonts.lato(
                  //                           textStyle: const TextStyle(
                  //                               fontSize: 10,
                  //                               fontWeight: FontWeight.bold,
                  //                               color: Colors.white),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ]),
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ));

                  if (BlocProvider.of<TaskCubit>(context).newtask[index]
                          ['repaet'] ==
                      'Daily') {
                    return AnimationConfiguration.staggeredList(
                        position: index,
                        child: SlideAnimation(
                          child: FadeInAnimation(
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return ShowBottomSheet(
                                            index: index,
                                          );
                                        });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.only(bottom: 12),
                                    child: Container(
                                      padding: const EdgeInsets.all(16),
                                      //  width: SizeConfig.screenWidth * 0.78,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: _getBGClr(
                                            BlocProvider.of<TaskCubit>(context)
                                                    .newtask[index]['color'] ??
                                                0),
                                      ),
                                      child: Row(children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                BlocProvider.of<TaskCubit>(
                                                                context)
                                                            .newtask[index]
                                                        ['title'] ??
                                                    "",
                                                style: GoogleFonts.lato(
                                                  textStyle: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.access_time_rounded,
                                                    color: Colors.grey[200],
                                                    size: 18,
                                                  ),
                                                  const SizedBox(width: 4),
                                                  Text(
                                                    "${BlocProvider.of<TaskCubit>(context).newtask[index]['starttime']} - ${BlocProvider.of<TaskCubit>(context).newtask[index]['endtime']}",
                                                    style: GoogleFonts.lato(
                                                      textStyle: TextStyle(
                                                          fontSize: 13,
                                                          color:
                                                              Colors.grey[100]),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 12),
                                              Text(
                                                BlocProvider.of<TaskCubit>(
                                                                context)
                                                            .newtask[index]
                                                        ['note'] ??
                                                    "",
                                                style: GoogleFonts.lato(
                                                  textStyle: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.grey[100]),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 60,
                                          width: 0.5,
                                          color: Colors.grey[200]!
                                              .withOpacity(0.7),
                                        ),
                                        RotatedBox(
                                          quarterTurns: 3,
                                          child: Text(
                                            BlocProvider.of<TaskCubit>(context)
                                                            .newtask[index]
                                                        ['iscompleted'] ==
                                                    1
                                                ? "COMPLETED"
                                                : "TODO",
                                            style: GoogleFonts.lato(
                                              textStyle: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ));
                  } else if (BlocProvider.of<TaskCubit>(context).newtask[index]
                          ['date'] ==
                      BlocProvider.of<TaskCubit>(context).formation) {
                    return AnimationConfiguration.staggeredList(
                        position: index,
                        child: SlideAnimation(
                          child: FadeInAnimation(
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return ShowBottomSheet(
                                            index: index,
                                          );
                                        });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    width: MediaQuery.of(context).size.width,
                                    margin: const EdgeInsets.only(bottom: 12),
                                    child: Container(
                                      padding: const EdgeInsets.all(16),
                                      //  width: SizeConfig.screenWidth * 0.78,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: _getBGClr(
                                            BlocProvider.of<TaskCubit>(context)
                                                    .newtask[index]['color'] ??
                                                0),
                                      ),
                                      child: Row(children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                BlocProvider.of<TaskCubit>(
                                                                context)
                                                            .newtask[index]
                                                        ['title'] ??
                                                    "",
                                                style: GoogleFonts.lato(
                                                  textStyle: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 12,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.access_time_rounded,
                                                    color: Colors.grey[200],
                                                    size: 18,
                                                  ),
                                                  const SizedBox(width: 4),
                                                  Text(
                                                    "${BlocProvider.of<TaskCubit>(context).newtask[index]['starttime']} - ${BlocProvider.of<TaskCubit>(context).newtask[index]['endtime']}",
                                                    style: GoogleFonts.lato(
                                                      textStyle: TextStyle(
                                                          fontSize: 13,
                                                          color:
                                                              Colors.grey[100]),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 12),
                                              Text(
                                                BlocProvider.of<TaskCubit>(
                                                                context)
                                                            .newtask[index]
                                                        ['note'] ??
                                                    "",
                                                style: GoogleFonts.lato(
                                                  textStyle: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.grey[100]),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 60,
                                          width: 0.5,
                                          color: Colors.grey[200]!
                                              .withOpacity(0.7),
                                        ),
                                        RotatedBox(
                                          quarterTurns: 3,
                                          child: Text(
                                            BlocProvider.of<TaskCubit>(context)
                                                            .newtask[index]
                                                        ['iscompleted'] ==
                                                    1
                                                ? "COMPLETED"
                                                : "TODO",
                                            style: GoogleFonts.lato(
                                              textStyle: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ));

                    // return Container(
                    //   child: Text('data'),
                    // );
                  } else {
                    return Container(
                      child: Column(
                        children: [
                          Text(
                              '${BlocProvider.of<TaskCubit>(context).newtask[index]['date']} = daa'),
                          Text(
                              '${BlocProvider.of<TaskCubit>(context).formation} = for'),
                        ],
                      ),
                    );
                    // print(
                    //     '${BlocProvider.of<TaskCubit>(context).newtask[index]['date']} = daa');
                    // print(
                    //     '${BlocProvider.of<TaskCubit>(context).formation} = for');

                    // return Container(
                    //   child: Text('data'),
                    // );
                  }
                },
                itemCount: BlocProvider.of<TaskCubit>(context).newtask.length));
      },
    );
  }
}

_getBGClr(int no) {
  switch (no) {
    case 0:
      return bluisClr;
    case 1:
      return pinkColr;
    case 2:
      return yellowClr;
    default:
      return bluisClr;
  }
}
