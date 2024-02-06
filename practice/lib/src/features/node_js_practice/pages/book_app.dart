import 'package:flutter/material.dart';
import 'package:practice/src/app_injection_container.dart';
import 'package:practice/src/features/practice_app/utils/tile_container.dart';
import 'package:practice/src/features/todos_w_api/components/loading_widget.dart';
import 'package:practice/src/shared/services/apis/book_api_service.dart';

class NodeBookApp extends StatelessWidget {
  const NodeBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book App with Node'),
      ),
      body: FutureBuilder(
        future: locator<BookApiService>().getBooks(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              final books = snapshot.data!;
              return ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return TileContainer(
                    onTap: () {},
                    childText: books[index]['title'],
                    subtitle: books[index]['author'],
                    hasSubtitle: true,
                  );
                },
              );
            } else if (snapshot.hasError) {
              print(snapshot.error.toString());
              return ErrorWidget(snapshot.error.toString());
            }
          }
          return const LoadingWidget();
        },
      ),
    );
  }
}
