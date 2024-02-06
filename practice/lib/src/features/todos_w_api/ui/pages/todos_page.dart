import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/src/features/todos_w_api/components/loading_widget.dart';
import 'package:practice/src/features/todos_w_api/components/todo_tile.dart';
import 'package:practice/src/app_injection_container.dart';
import 'package:practice/src/shared/services/apis/todos_api.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Todos',
          style: GoogleFonts.josefinSans(
            fontSize: 28,
          ),
        ),
      ),
      body: FutureBuilder(
        future: locator<TodosApi>().getTodoList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              final userList = snapshot.data!;

              return ListView.builder(
                itemCount: userList.length,
                itemBuilder: (context, index) {
                  return TodoTile(
                    userId: userList[index]['userId'],
                    id: userList[index]['id'],
                    title: userList[index]['title'],
                    isCompleted: userList[index]['completed'],
                  );
                },
              );
            } else if (snapshot.hasError) {
              return ErrorWidget(snapshot.error.toString());
            }
          }
          return const LoadingWidget();
        },
      ),
    );
  }
}
