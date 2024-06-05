import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app_api/models/news_model.dart';

class ApiServices{
  Future<NewsModel?> getNews()async{
    final url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=f96278aa72ba4ec8b7c431d52fedd06a";
    final response = await http.get(Uri.parse(url));
    if(response.statusCode == 200){
      final body = jsonDecode(response.body);
      return NewsModel.fromJson(body);
    }
    throw Exception("error");
  }
}