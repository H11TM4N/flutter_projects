import 'package:flutter/material.dart';

class KtodoTile extends StatelessWidget {
  final String title;
  final void Function(bool?)? onChanged;
  final bool isCompleted;

  const KtodoTile({
    super.key,
    required this.title,
    required this.onChanged,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Checkbox(
          checkColor: Colors.amber,
          shape: const CircleBorder(),
          value: isCompleted,
          onChanged: onChanged,
        ),
        title: Text(title),
      ),
    );
  }
}
