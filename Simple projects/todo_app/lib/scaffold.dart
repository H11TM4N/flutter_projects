import 'package:flutter/material.dart';

enum _Popupmenu{
  addTask,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('nothing'),
        actions: [
          PopupMenuButton<_Popupmenu>(
            onSelected: (value) {
              switch (value) {
                case _Popupmenu.addTask:
                  debugPrint("trial");  //dont forget this
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<_Popupmenu>>[
                const PopupMenuItem<_Popupmenu>(
                  value: _Popupmenu.addTask,
                  child: Text('Add'),
                ),
              ];
            },
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey,
      body: const Column(
        children: [
          TextField(
            
          ),
        ],
      ),
    );
  }
}
