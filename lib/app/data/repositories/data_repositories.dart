import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:reddit_feeling/app/data/models/data.dart';
import 'package:reddit_feeling/app/data/servers/app_servers.dart';

class DataRepository {
  static Future<List<Data>> fetch() async {
    var client = http.Client();

    try {
      var response = await http.post(AppServer.uri);
      var decodedResponse = jsonDecode(response.body) as List;
      List<Data> data = decodedResponse.map((e) => Data.fromJson(e)).toList();
      return data;
    } finally {
      client.close();
    }
  }
}
