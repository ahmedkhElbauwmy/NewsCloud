// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class newsList extends StatelessWidget {
  const newsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        // mainAxisAlignment: mai,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/health.jpg',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'this is the large descreption in the list title and list view',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'this is the small descreption in the list title and list view',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class newsSleverlist extends StatelessWidget {
  const newsSleverlist({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
      return const Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: newsList(),
      );
    }));

    // ListView.builder(
    //   //لو شيلها مش هيعمل اسكرول
    //   physics: const NeverScrollableScrollPhysics(),
    //   shrinkWrap: true,
    //             itemCount: 10,
    //             itemBuilder:(context,index){
    //             return const newsList();
    //           } );
  }
}
