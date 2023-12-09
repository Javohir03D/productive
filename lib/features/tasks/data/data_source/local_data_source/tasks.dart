import 'package:productive/constants/mock/mock_data.dart';
import 'package:productive/core/exceptions/cache.dart';

import '../../models/task.dart';

abstract class TasksLocalDataSource {
  factory TasksLocalDataSource() {
    return _TasksLocalDataSourceImpl();
  }

  /// GET: Returns list of [TaskModel]
  /// No Api for this, locally inserted
  ///
  /// Throws CacheException for any kind of errors
  Future<List<TaskModel>> getTasks();
}

class _TasksLocalDataSourceImpl implements TasksLocalDataSource {
  @override
  Future<List<TaskModel>> getTasks() async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      return tasksList
          .map(
            (data) => TaskModel.fromJson(data),
          )
          .toList();
    } catch (error) {
      throw CacheException(errorMessage: "$error");
    }
  }
}
