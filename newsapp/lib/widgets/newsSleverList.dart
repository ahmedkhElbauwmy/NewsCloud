// ignore_for_file: file_names, camel_case_types, unused_import

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/articlesModel.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/widgets/newsList.dart';


class newsSleverlist extends StatelessWidget {
  final List<ArticlesModel> articles;

 const newsSleverlist({super.key, required this.articles});
 
  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: newsList(
                articlesModel: articles[index],
              ),
            );
          }));
  }
}
