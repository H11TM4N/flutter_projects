import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/todos_w_api/components/loading_widget.dart';
import 'package:practice/todos_w_api/components/todo_tile.dart';
import 'package:practice/todos_w_api/ui/services/api_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        future: TodosApi.getTodoList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // if (snapshot.hasData &&
            //     snapshot.data!.fold((l) => true, (r) => r.isEmpty)) {
            //   return const Text('No todos available.');
            // }

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
