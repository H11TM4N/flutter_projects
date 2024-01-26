import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<dynamic>> getAdviceData() async {
    try {
      final res = await http.get(
        Uri.parse('https://api.adviceslip.com/advice'),
      );

      final data = jsonDecode(res.body);

      if (res.statusCode != 200) {
        throw 'An unexpected error occurred';
      }
      return data['slip'];
    } catch (e) {
      throw e.toString();
    }
  }
}
