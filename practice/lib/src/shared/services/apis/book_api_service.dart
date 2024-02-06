import 'package:dio/dio.dart';
import 'package:practice/src/shared/utils/typedefs.dart';

class BookApiService {
  Future<JsonList> getBooks() async {
    final dio = Dio();
    try {
      final res = await dio.get('http://localhost:3000/api/books');

      if (res.statusCode != 200) {
        throw 'An unexpected error occurred';
      }
      return (res.data as List).cast<Map<String, dynamic>>();
    } catch (e) {
      throw e.toString();
    }
  }
}
