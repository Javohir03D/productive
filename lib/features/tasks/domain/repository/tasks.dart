import '../entities/task.dart';

abstract class TasksRepository {
  Future<List<TaskEntity>> getTasks();
}
