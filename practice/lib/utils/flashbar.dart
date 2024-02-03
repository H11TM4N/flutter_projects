import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showSnackBar({required BuildContext context, required String message}) {
  showFlash(
    context: context,
    builder: (context, controller) {
      return Flash(
        controller: controller,
        dismissDirections: const [
          FlashDismissDirection.startToEnd,
          FlashDismissDirection.endToStart
        ],
        position: FlashPosition.top,
        child: FlashBar(
          backgroundColor: Colors.yellow.withOpacity(0.9),
          behavior: FlashBehavior.floating,
          position: FlashPosition.top,
          controller: controller,
          title: Center(child: Text(message)),
          icon: const Icon(CupertinoIcons.settings), //* leading
          showProgressIndicator: true,
          primaryAction: const Icon(Icons.ac_unit), //* trailing
          content: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
        ),
      );
    },
  );
}
