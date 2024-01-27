import 'package:flutter/material.dart';
import 'package:todo_app/ui/components/components.dart';
import 'package:todo_app/ui/pages/views/todo_view.dart';

class WebPage extends StatelessWidget {
  const WebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              BackgroundImage(isMobile: false),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 10),
            child: TodoView(),
          ),
        ],
      ),
    );
  }
}
