// import 'package:productive/core/exceptions/server.dart';
// import 'package:productive/features/tasks/data/data_source/local_data_source/tasks.dart';
// import 'package:productive/features/tasks/domain/entities/task.dart';
//
//
// import '../../../../core/exceptions/cache.dart';
//
// class TasksRepositoryImpl implements TasksRepository {
//   final TasksLocalDataSource _tasksLocalDataSource;
//
//   TasksRepositoryImpl({required TasksLocalDataSource dataSource})
//       : _tasksLocalDataSource = dataSource;
//
//   @override
//   Future<List<TaskEntity>> getTasks() async {
//     try {
//       final tasksList = await _tasksLocalDataSource.getTasks();
//       return tasksList;
//     } on CacheException catch (error) {
//       return [];
//     } on ServerException catch (error) {
//       return [];
//     }
//   }
// }
