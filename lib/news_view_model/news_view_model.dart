

import 'package:news_app_api/controller/news_controller.dart';

import '../models/news_model.dart';

class NewsViewModel{
  final res = ApiServices();
   Future<NewsModel?> getNews()async{
    final response =await res.getNews();

    return response;

  }
}