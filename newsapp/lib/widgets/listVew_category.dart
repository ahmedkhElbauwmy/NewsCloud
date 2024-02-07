// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:newsapp/models/sidCardModel.dart';
import 'package:newsapp/widgets/sideCard_repetedCategory.dart';

class listView_categories extends StatelessWidget {
  const listView_categories({
    super.key,this.sideCardModele
  });
  final SideCardModele? sideCardModele;
  final List<SideCardModele> cards =const [
    SideCardModele(
        text: 'Business',      image: 'assets/images/business.jpg'),
    SideCardModele(
        text: 'Technology',    image: 'assets/images/technology.jpg'),
    SideCardModele(
        text: 'entertainment', image: 'assets/images/entertainment.jpg'),
    SideCardModele(
        text: 'General',       image: 'assets/images/general.jpg'),
    SideCardModele(
        text: 'Health',        image: 'assets/images/health.jpg'),
    SideCardModele(
        text: 'Science',       image: 'assets/images/science.avif'),
    SideCardModele(
        text: 'Sports',        image: 'assets/images/sports.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: 120,
              child: Builder(builder: (context) {
    return ListView.builder(
      itemCount: cards.length,
      itemBuilder: (context, index) {
        
        return sidCardCategory(sideCardModele: cards[index]);
      },
      scrollDirection: Axis.horizontal,
      physics: const PageScrollPhysics(),
    
      // shrinkWrap: true,
    );
              }),
            );
  }
}