import 'package:flutter/material.dart';

PopupMenuButton popupMenuButton = PopupMenuButton(
  itemBuilder: (context) {
    return [
      PopupMenuItem(
        child: const Text('Screen saver'),
        onTap: () {},
      ),
      PopupMenuItem(
        child: const Text('Settings'),
        onTap: () {},
      ),
      PopupMenuItem(
        child: const Text('Privacy policy'),
        onTap: () {},
      ),
      PopupMenuItem(
        child: const Text('Send feedback'),
        onTap: () {},
      ),
      PopupMenuItem(
        child: const Text('Help'),
        onTap: () {},
      ),
    ];
  },
);
