// // ignore_for_file: public_member_api_docs, sort_constructors_first
// class Task {
//   final String id;
//   final String title;
//   final bool isCompleted;

//   Task({
//     this.id = ' ',
//     required this.title,
//     this.isCompleted = false,
//   });

//   Task copyWith({
//     String? id,
//     String? title,
//     bool? isCompleted,
//   }) {
//     return Task(
//       id: id ?? this.id,
//       title: title ?? this.title,
//       isCompleted: isCompleted ?? this.isCompleted,
//     );
//   }

//   @override
//   bool operator ==(covariant Task other) {
//     if (identical(this, other)) return true;

//     return other.id == id &&
//         other.title == title &&
//         other.isCompleted == isCompleted;
//   }

//   @override
//   int get hashCode => id.hashCode ^ title.hashCode ^ isCompleted.hashCode;
// }

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
