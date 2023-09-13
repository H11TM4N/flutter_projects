import 'package:digital_clock_app/popup_pages/feedback_page.dart';
import 'package:digital_clock_app/popup_pages/help.dart';
import 'package:digital_clock_app/popup_pages/privacy_policy_page.dart';
import 'package:digital_clock_app/popup_pages/screensaver_page.dart';
import 'package:digital_clock_app/popup_pages/setings_page.dart';
import 'package:flutter/material.dart';

PopupMenuItem popupMenuItem(BuildContext context, String text, widget) {
  return PopupMenuItem(
    child: Text(text),
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return widget;
          },
        ),
      );
    },
  );
}

PopupMenuButton popupMenuButton() {
  return PopupMenuButton(
    itemBuilder: (context) {
      return [
        popupMenuItem(context, 'Screen saver', const ScreenSaverScreen()),
        popupMenuItem(context, 'Settings', const SettingsScreen()),
        popupMenuItem(context, 'Privacy policy', const PrivacyPolicyScreen()),
        popupMenuItem(context, 'Send feedback', const SendFeedbackScreen()),
        popupMenuItem(context, 'Help', const HelpScreen()),
      ];
    },
  );
}
