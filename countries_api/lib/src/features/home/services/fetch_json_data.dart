import 'dart:convert';

import 'package:countries_api/src/features/home/models/country.dart';
import 'package:flutter/services.dart' as root_bundle;

class ReadJsonFile {
  static Future<List<Country>> readJsonData({required String path}) async {
    // read json file
    final jsondata = await root_bundle.rootBundle.loadString(path);

    // decode json data as list
    final list = json.decode(jsondata);

    // return list.cast<Map<String, dynamic>>();
    return List<Country>.from(list.map((item) => Country.fromJson(item)));
  }
}
