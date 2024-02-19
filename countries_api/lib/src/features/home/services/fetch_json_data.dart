import 'dart:convert';
import 'package:flutter/services.dart' as root_bundle;

typedef Json = List<Map<String, dynamic>>;

class AppServices {
  static Future<Json> readJsonData() async {
    // read json file
    final jsondata =
        await root_bundle.rootBundle.loadString('assets/data.json');

    // decode json data as list
    final list = json.decode(jsondata);

    return list.cast<Map<String, dynamic>>();
  }
}
