import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/category.dart';
import 'package:flutter_application_1/foodspage.dart';

class CategoryItem extends StatelessWidget {
  //1 categoryItem - 1 category object
  Category category;
  CategoryItem({required this.category});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color _color = this.category.color;
    return InkWell(
      onTap: () {
        print('tapped : ${this.category.content}');
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) => FoodsPage(category: this.category)));
        Navigator.pushNamed(context, FoodsPage.routeName,
            arguments: {'category': category});
      },
      child: Container(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(this.category.content,
                style: Theme.of(context).textTheme.headline6),
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [_color.withOpacity(0.8), _color],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
            color: _color,
            borderRadius: BorderRadius.circular(20)),
      )),
    );
  }
}
