import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

class PhotosApi extends StatefulWidget {
  const PhotosApi({super.key});

  @override
  State<PhotosApi> createState() => _PhotosApiState();
}

class _PhotosApiState extends State<PhotosApi> {
  int counter = 0;

  void fetchImage() {
    counter++;
    get('https://jsonplaceholder.typicode.com/photos/$counter' as Uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text('$counter'),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchImage,
        child: const Icon(Icons.add),
      ),
    );
  }
}
