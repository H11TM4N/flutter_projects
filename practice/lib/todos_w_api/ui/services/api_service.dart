import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class TodosApi {
  static Future<Either<String, JsonList>> getTodoList() async {
    final dio = Dio();
    try {
      final res = await dio.get('https://jsonplaceholder.typicode.com/todos/');

      if (res.statusCode != 200) {
        throw 'An unexpected error occurred';
      }

      return right(res.data);
    } catch (e) {
      return left(e.toString());
    }
  }
}

typedef JsonList = List<Map<String, dynamic>>;
