class TaskModel {
  int id;
  String title;
  String note;
  int isCompleted;
  String date;
  String startTime;
  String endTIme;
  int color;
  int remdiner;
  String repaet;

  TaskModel(
      {required this.id,
      required this.title,
      required this.note,
      required this.isCompleted,
      required this.date,
      required this.startTime,
      required this.endTIme,
      required this.color,
      required this.remdiner,
      required this.repaet});
}
