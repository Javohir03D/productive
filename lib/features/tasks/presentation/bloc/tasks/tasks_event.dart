part of 'tasks_bloc.dart';

@immutable
abstract class TasksEvent {
  const TasksEvent();
}

class GetTasksEvent extends TasksEvent {
  final Function() onSuccess;
  final Function(String errorMessage) onFailure;

  const GetTasksEvent({
    required this.onSuccess,
    required this.onFailure,
  });
}
