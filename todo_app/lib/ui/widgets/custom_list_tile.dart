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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.deepPurple,
              ],
            ),
            boxShadow: [
              BoxShadow(
                  // blurRadius: 20.0,
                  // color: Colors.purple,
                  ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: ListTile(
          leading: Checkbox(
            shape: const CircleBorder(),
            onChanged: onChanged,
            value: isCompleted,
          ),
          title: Text(
            title,
            style: TextStyle(
              decoration: isCompleted
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              fontSize: 17,
              color: isCompleted ? Colors.grey.shade500 : null,
            ),
          ),
          contentPadding: const EdgeInsets.all(8.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
