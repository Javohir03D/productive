import 'dart:ui';

import 'package:productive/core/data/models/priority.dart';

class ModeTaskModel {
  final int id;
  final String icon;
  final String title;
  final Priority priority;
  final String? note;
  final DateTime startDate;
  final DateTime dueDate;
  final bool isChecked;
  final Color iconColor;

  ModeTaskModel(
      {required this.id,
      required this.icon,
      required this.title,
      required this.priority,
      required this.note,
      required this.startDate,
      required this.dueDate,
      required this.isChecked,
      required this.iconColor});

  ModeTaskModel copyWith(
      {int? id,
      String? icon,
      String? title,
      Priority? priority,
      String? note,
      DateTime? startDate,
      DateTime? dueDate,
      bool? isChecked,
      Color? iconColor}) {
    return ModeTaskModel(
      id: id ?? this.id,
      icon: icon ?? this.icon,
      title: title ?? this.title,
      priority: priority ?? this.priority,
      note: note ?? this.note,
      startDate: startDate ?? this.startDate,
      dueDate: dueDate ?? this.dueDate,
      isChecked: isChecked ?? this.isChecked,
      iconColor: iconColor ?? this.iconColor,
    );
  }
}
