import 'dart:convert';
import 'package:advice_generator/common/typedefs.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<Either<String, Json>> getAdviceData() async {
    try {
      final res = await http.get(
        Uri.parse('https://api.adviceslip.com/advice'),
      );

      final data = jsonDecode(res.body);

      if (res.statusCode != 200) {
        throw 'An unexpected error occurred';
      }
      return right(data['slip']);
    } catch (e) {
      throw left(e.toString());
    }
  }
}
