// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:newsapp/screens/home_screen.dart';

void main(){
  runApp(const newsApp());
}
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