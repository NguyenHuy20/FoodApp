import 'dart:math';
import 'category.dart';

class Food {
  int id;
  String name;
  String urlImage;
  Duration duration;
  Complexity complexity;
  List<String> ingredients = <String>[];
  int categoryId;
  Food(
      {this.id = 0,
      required this.name,
      required this.urlImage,
      required this.duration,
      required this.complexity,
      required this.ingredients,
      required this.categoryId}) {
    this.id = Random().nextInt(1000);
  }
}

enum Complexity { Simple, Medium, Hard }
