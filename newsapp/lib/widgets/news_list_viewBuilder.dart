// ignore_for_file: camel_case_types, duplicate_ignore, file_names, empty_catches
//cached network image .. handel null or invalid image data from internet
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/widgets/newsSleverList.dart';

// ignore: camel_case_types
class newsSleverListViewBuilder extends StatelessWidget {
  const newsSleverListViewBuilder({super.key, required this.q});
final String q;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: neswServices(Dio()).getnews(q:q),
      builder: (context,snapshot){
        if (snapshot.hasData) {
          return newsSleverlist(articles: snapshot.data!);
          }
          else if(snapshot.hasError){
               return const SliverToBoxAdapter(
                child: Center(child: Text('OOps there was an error',style: TextStyle(color: Colors.red),)),
              );
          }
          else{
                return const SliverToBoxAdapter(
                     child: Center(
                      child: CircularProgressIndicator(),
                      ),
                      );
          }
      });
}}
