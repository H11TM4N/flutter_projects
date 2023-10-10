// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';



class TaskState {
  final int id;
  final String name;
  final bool isCompleted;

  const TaskState({
    required this.id,
    required this.name,
    required this.isCompleted,
  });

  TaskState copyWith({
    int? id,
    String? name,
    bool? isCompleted,
  }) {
    return TaskState(
      id: id ?? this.id,
      name: name ?? this.name,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'isCompleted': isCompleted,
    };
  }

  factory TaskState.fromMap(Map<String, dynamic> map) {
    return TaskState(
      id: map['id'] as int,
      name: map['name'] as String,
      isCompleted: map['isCompleted'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskState.fromJson(String source) => TaskState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'TaskState(id: $id, name: $name, isCompleted: $isCompleted)';

  @override
  bool operator ==(covariant TaskState other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.isCompleted == isCompleted;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ isCompleted.hashCode;
}
