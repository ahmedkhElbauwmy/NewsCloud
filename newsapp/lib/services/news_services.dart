// ignore_for_file: camel_case_types, avoid_print

import 'package:dio/dio.dart';
import 'package:newsapp/models/articlesModel.dart';
//cached network image .. handel null or invalid image data from internet
class neswServices {
  final Dio dio;

  neswServices(this.dio);

  Future<List<ArticlesModel>> getnews({required String q}) async {
    try {
  final response = await dio.get(
      'https://newsapi.org/v2/everything?q=$q&apiKey=8e2b9474abba41ac9e8c5a9aa319cf11');
  // print(response);
  Map<String, dynamic> jsonData = response.data;
  List<dynamic> articles = jsonData['articles'];
  // print(articles);
  List<ArticlesModel> articlesList = [];
  for (var article in articles) {
    ArticlesModel articlesModel = ArticlesModel(
      //cached network image .. handel null or invalid image data from internet
      image: article['urlToImage'],
      title: article['title'],
      subtitle: article['description'],
    );
    articlesList.add(articlesModel);
  }
  // print(articlesList);
  return articlesList;
} catch (e) {

  return [];
  
}
  }
}
