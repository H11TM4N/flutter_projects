import 'package:flash/flash.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingPage extends StatelessWidget {
  final String title;
  const SettingPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            child: const Text('Show toast'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
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
                      backgroundColor: Colors.blue,
                      behavior: FlashBehavior.floating,
                      position: FlashPosition.top,
                      controller: controller,
                      content: SizedBox(
                        height: 70,
                        child: Container(
                          alignment: Alignment.center,
                          child: const Text(
                            'message',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
            child: const Text('Show snackbar'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.go('/setting/$title/dummy');
            },
            child: const Text('NFavigate'),
          ),
        ],
      ),
    );
  }
}
