// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
// import 'package:newsapp/models/sidCardModel.dart';
import 'package:newsapp/widgets/listVew_category.dart';
import 'package:newsapp/widgets/newsList.dart';
// import 'package:newsapp/widgets/sideCard_repetedCategory.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 2,
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
      body:const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
        
          physics:  BouncingScrollPhysics(),
          slivers: [
            
             SliverToBoxAdapter(
              child: listView_categories(),
            ),
             //remove size box  bec sliverlist .. type of sliver
              newsSleverlist(),
            
           
          ],
        ),
      ),

      //  const Padding(
      //     padding:  EdgeInsets.symmetric(horizontal:10),
      //     child:  Column(
      //       children: [
      //         listView_categories(),
      //         Expanded(child: newslistbuilder()),
      //       ],
      //     ),
      //   ),
    );
  }
}
