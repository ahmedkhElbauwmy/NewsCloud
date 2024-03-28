
// // ignore_for_file: file_names, camel_case_types, empty_catches

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:newsapp/models/articlesModel.dart';
// import 'package:newsapp/services/news_services.dart';
// import 'package:newsapp/widgets/newsList.dart';


// class  newsSleverlist extends StatefulWidget {
//  const  newsSleverlist({super.key});
//   @override
//   State<newsSleverlist> createState() => _newsSleverlistState();
// }

// class _newsSleverlistState extends State<newsSleverlist> {

//    List<ArticlesModel> articles =[];
//  bool isloading =true;

//   @override
//    void initState()   {

//     super.initState();

//       getGeneralNews();
//   }
// //extract folr general news --> articles ctrl=shift+r to extract thne method to avoid the init async exeption  
//   //andremove the async and await words from the original method.
//   Future<void> getGeneralNews() async {
//      try {
//   articles= await  neswServices(Dio()).getnews();
//   // to solve the slow data loading
//   setState(() {
//   });
//   isloading =false;
// }  catch (e) {}
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isloading? const SliverToBoxAdapter(child: Center(child:  CircularProgressIndicator())): SliverList (
//         delegate:
//          SliverChildBuilderDelegate(
//           childCount: articles.length,
//            (context, index) {
//       return  Padding(
//         padding:const EdgeInsets.only(bottom: 10),
//         child: newsList(articlesModel: articles[index],),
//       );
//     }));

//     // ListView.builder(
//     //   //لو شيلها مش هيعمل اسكرول
//     //   physics: const NeverScrollableScrollPhysics(),
//     //   shrinkWrap: true,
//     //             itemCount: 10,
//     //             itemBuilder:(context,index){
//     //             return const newsList();
//     //           } );
//   }
// }
