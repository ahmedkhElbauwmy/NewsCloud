// ignore_for_file: file_names

class ArticlesModel {
  //  String? image='assets/images/entertainment.jpg';
  final String? image;
  final String title;
  final String? subtitle;

  ArticlesModel(
      {required this.image, required this.title, required this.subtitle});
      // it prints  Instance of 'ClassName'-->ArticlesModel,so we have to overide tostring.
  @override
  String toString() {
    return '{$image ,$title,$subtitle}';
  }
}
