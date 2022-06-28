import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/food.dart';

class DetailFoodPage extends StatelessWidget {
  Food food;
  DetailFoodPage({required this.food});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('${food.name}'),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: FadeInImage.assetNetwork(
                  placeholder: 'assets/image/Ajux_loader.gif',
                  image: food.urlImage),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Ingredients',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: this.food.ingredients.length,
              itemBuilder: (context, index) {
                String ingredients = this.food.ingredients[index];
                return ListTile(
                  leading: CircleAvatar(
                      child: Text(
                    '${index + 1}',
                    style: TextStyle(fontSize: 18),
                  )),
                  title: Text(
                    ingredients,
                    style: TextStyle(fontSize: 20),
                  ),
                );
              },
            ))
          ],
        ));
  }
}
