import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:sqflite/sqflite.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());
  Database? database;

  String formation = DateFormat.yMd().format(DateTime.now());

  formation1(String value) {
    formation = value;
    emit(TaskGetdata());
  }

  List newtask = [];
  int? iscompleted = 0;

  void updataiscompleted({iscompleted, id}) {
    database!.rawUpdate(
        'UPDATE task SET iscompleted = ? WHERE id =? ', [1, id]).then((value) {
      getdatabase(database);
      emit(Taskupdataiscomelete());
    });
  }

  void Createdata() {
    openDatabase(
      'task',
      version: 1,
      onCreate: (database, version) {
        database.execute(
            'CREATE TABLE task (id INTEGER PRIMARY KEY , title TEXT , note TEXT , date TEXT , starttime TEXT , endtime TEXT , color INTEGER , remdiner INTEGER , repaet TEXT, iscompleted INTEGER)');
        print('create');
      },
      onOpen: (database) {
        getdatabase(database);
        print('open');
      },
    ).then((value) {
      database = value;
      emit(TaskCreate());
    });
  }

  getdatabase(database) async {
    newtask = await database!.rawQuery('SELECT * FROM task');
    emit(TaskGetdata());
    print(newtask);
  }

  insertData(String title, String note, String date, String starttime,
      String endtime, int color, int remdiner, String repeat, int iscompleted) {
    database!.transaction((txn) {
      txn
          .rawInsert(
              'INSERT INTO task (title , note , date , starttime , endtime , color , remdiner , repaet , iscompleted)  VALUES("$title" , " $note", "$date", "$starttime" , "$endtime" , "$color" , "$remdiner" , "$repeat" ,"$iscompleted" )')
          .then((value) {
        getdatabase(database);
        emit(TaskInsert());
        print('$value insert Secsseuffly');
      });
      return Future.value();
    });
  }

  void deletetask(id) {
    database!.rawDelete('DELETE FROM task WHERE id = ?', [id]).then((value) {
      getdatabase(database);
      emit(TaskDeleletdata());
    });
  }
}
