import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final String title;
  final bool isCompleted;
  final bool isFirst;
  const TodoTile({
    super.key,
    required this.title,
    required this.isCompleted,
    required this.isFirst,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: theme.primary,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(isFirst ? 5 : 0),
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 8),
        title: Text(title),
        leading: const Icon(Icons.check_box_outline_blank),
      ),
    );
  }
}
