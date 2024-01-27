import 'package:flutter/material.dart';
import 'package:todo_app/ui/components/components.dart';
import 'package:todo_app/ui/pages/views/todo_view.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              BackgroundImage(isMobile: true),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 10),
            child: TodoView(),
          )
        ],
      ),
    );
  }
}
