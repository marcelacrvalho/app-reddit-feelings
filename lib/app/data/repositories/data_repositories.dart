import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:reddit_feeling/app/data/models/data.dart';
import 'package:reddit_feeling/app/data/servers/app_servers.dart';

class DataRepository {
  static Future<List<Data>?>? fetch() async {
    try {
      var response = await http.get(AppServer.uri);
      var decodedResponse = jsonDecode(response.body) as List;
      List<Data> data = decodedResponse.map((e) => Data.fromJson(e)).toList();
      return data;
    } catch (e){
      return null;
    }
  }
}
