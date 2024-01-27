import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String title;
  final bool isCompleted;
  const TodoTile({
    super.key,
    required this.title,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      title: Text(title),
      leading: const Icon(Icons.check_box_outline_blank),
      tileColor: theme.primary,
    );
  }
}
