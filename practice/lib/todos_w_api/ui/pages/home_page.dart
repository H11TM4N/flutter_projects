import 'package:flutter/material.dart';
import 'package:practice/todos_w_api/components/loading_widget.dart';
import 'package:practice/todos_w_api/ui/services/api_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
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
                
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 50,
                      alignment: Alignment.center,
                      child: Text('User ${userList[index]['userId']}'),
                    ),
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
