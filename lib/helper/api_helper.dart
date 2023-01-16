import 'dart:convert';
import 'package:api/globle/global.dart';
import 'package:api/models/models.dart';
import 'package:http/http.dart' as http;


class ApiHelpers {
  ApiHelpers._();

  static final ApiHelpers apiHelpers = ApiHelpers._();

  String baseURI = "https://jsonplaceholder.typicode.com";

  Future<List<SplashHolder>?> getData() async {
    String api = baseURI + Global.endpoint;
    http.Response data = await http.get(Uri.parse(api));

    if (data.statusCode == 200) {
      List decodeData = jsonDecode(data.body);
      List<SplashHolder> allData =
      decodeData.map((e) =>SplashHolder.fromMap(data: e)).toList();
      return allData;
    }
    return null;
  }
}
