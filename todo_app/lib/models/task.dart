import 'package:hive/hive.dart';

part 'task.g.dart';

@HiveType(typeId: 1)
class Task {
  @HiveField(0)
  Task({
    this.id = '',
    required this.title,
    this.isCompleted = false,
  });
  String id;

  @HiveField(1)
  String title;

  @HiveField(2)
  bool isCompleted;
}
