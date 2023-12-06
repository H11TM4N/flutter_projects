import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String text;
  final IconData icon;
  const DrawerTile({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: theme.inversePrimary,
        ),
        title: Text(text),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
