part of 'tasks_bloc.dart';

class TasksState {
  final LoadingStatus status;
  final List<TaskEntity> tasks;
  const TasksState({
    required this.status,
    required this.tasks,
  });
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TasksState &&
        listEquals(other.tasks, tasks) &&
        other.status == status;
  }
  @override
  int get hashCode => tasks.hashCode ^ status.hashCode;
}
