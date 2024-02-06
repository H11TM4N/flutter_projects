import 'package:dio/dio.dart';
import 'package:practice/src/shared/utils/typedefs.dart';

class TodosApi {
  Future<JsonList> getTodoList() async {
    final dio = Dio();
    try {
      final res = await dio.get('https://jsonplaceholder.typicode.com/todos');

      if (res.statusCode != 200) {
        throw 'An unexpected error occurred';
      }
      return (res.data as List).cast<Map<String, dynamic>>();
    } catch (e) {
      throw e.toString();
    }
  }
}
