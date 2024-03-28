// ignore_for_file: camel_case_types, file_names
import 'package:flutter/material.dart';
import 'package:newsapp/models/articlesModel.dart';


class newsList extends StatelessWidget {
  const newsList({super.key, required this.articlesModel});
  final ArticlesModel articlesModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        // mainAxisAlignment: mai,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              //image nullable so give it a default image
              articlesModel.image??'https://www.google.com/url?sa=i&url=https%3A%2F%2Finclusiq.com%2Finterruptions-at-work-what-difference-does-gender-make%2F&psig=AOvVaw15guAhMBhVu2VamB-Be1NC&ust=1708903525516000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCKDimKKQxYQDFQAAAAAdAAAAABAD',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            // Image.asset(
            //   'assets/images/health.jpg',
            //   height: 150,
            //   width: double.infinity,
            //   fit: BoxFit.cover,
            // ),
          ),
          const SizedBox(
            height: 10,
          ),
           Text(
            //'this is the large descreption in the list title and list view',
              articlesModel.title,
            style:const TextStyle(
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
           Text(
            //'this is the small descreption in the list title and list view',
              articlesModel.subtitle?? 'The subtitle descreption is not found',
            style: const TextStyle(
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
