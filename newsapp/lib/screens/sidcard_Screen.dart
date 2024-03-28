// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news_list_viewBuilder.dart';

// ignore: camel_case_types
class sidCardScreen extends StatelessWidget {
  const sidCardScreen({super.key, required this.q});
 final String q;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: CustomScrollView(
      slivers: [
        newsSleverListViewBuilder(q: q,),  
      ],
    ));
  }
}
