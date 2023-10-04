part of 'task_cubit.dart';

@immutable
sealed class TaskState {}

final class TaskInitial extends TaskState {}

final class TaskCreate extends TaskState {}

final class TaskInsert extends TaskState {}

final class TaskGetdata extends TaskState {}

final class TaskDeleletdata extends TaskState {}

final class Taskupdataiscomelete extends TaskState {}

final class Taskchange extends TaskState {}

final class TaskchangeDate extends TaskState {}
