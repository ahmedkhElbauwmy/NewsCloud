// ignore_for_file: file_names, camel_case_types
import 'package:flutter/material.dart';
import 'package:newsapp/models/sidCardModel.dart';

class sidCardCategory extends StatelessWidget {
  const sidCardCategory({super.key,required this.sideCardModele});
  final SideCardModele sideCardModele;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
      child: Container(
          height: 120,
          width: 180,
          // color: Colors.orange,
          decoration:  BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            // color: Colors.orange,
            image: DecorationImage(
              image: AssetImage(sideCardModele.image),
              fit: BoxFit.fill,
            ),
          ),
          child:  Center(
              child: Text(
            sideCardModele.text,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )),
        ),
    );
  
  }
}