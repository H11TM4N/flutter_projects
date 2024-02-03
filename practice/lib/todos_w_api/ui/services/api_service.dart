import 'package:dio/dio.dart';

typedef JsonList = List<Map<String, dynamic>>;

class TodosApi {
  static Future<JsonList> getTodoList() async {
    final dio = Dio();
    try {
      final res = await dio.get('https://jsonplaceholder.typicode.com/todos');

      if (res.statusCode != 200) {
        throw 'An unexpected error occurred';
      }
      // print(res.data[use]);
      return (res.data as List).cast<Map<String, dynamic>>();
    } catch (e) {
      throw e.toString();
    }
  }
}
