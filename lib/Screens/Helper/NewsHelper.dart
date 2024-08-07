import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
class ApiHelper
{
  Future<Map> fetchNewsData()
  async {
    Uri url =Uri.parse('https://newsapi.org/v2/top-headlines/sources?apiKey=41968c31a45b4fd9b0f0b57ec38fde5f');
    Response response =await  http.get(url);

    if(response.statusCode==200)
      {
        final json=response.body;
        final Map data=jsonDecode(json);
        return data;
      }
    else{
      return {};
    }
  }
}