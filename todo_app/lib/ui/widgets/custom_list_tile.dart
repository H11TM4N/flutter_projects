import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final bool isCompleted;
  final void Function(bool?)? onChanged;
  const CustomListTile({
    super.key,
    required this.title,
    required this.isCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: Checkbox(
          shape: const CircleBorder(),
          onChanged: onChanged,
          value: isCompleted,
        ),
        title: Text(
          title,
          style: TextStyle(
            decoration:
                isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        contentPadding: const EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
