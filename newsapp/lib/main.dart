// ignore_for_file: camel_case_types, unused_import

import 'package:flutter/material.dart';
import 'package:newsapp/screens/home_screen.dart';
import 'package:dio/dio.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/widgets/newsList.dart';

void main(){
  // neswServices news;
  // neswServices(Dio()).getnews();
  runApp(const newsApp());
}
//

class newsApp extends StatelessWidget {
  const newsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:home_screen() ,
    );
  }
}