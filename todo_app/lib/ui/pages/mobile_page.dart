import 'package:flutter/material.dart';
import 'package:todo_app/ui/components/components.dart';
import 'package:todo_app/ui/pages/views/main_view.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Stack(
        children: [
          Column(
            children: [
              BackgroundImage(isMobile: true),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 50),
            child: MainView(),
          )
        ],
      ),
    );
  }
}
