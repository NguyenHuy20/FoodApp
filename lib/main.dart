import 'package:flutter_application_1/foodspage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/categories_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App with Navigation',
      initialRoute: '/',
      routes: {
        '/FoodsPage': (context) => FoodsPage(),
        '/CategoriesPage': (context) => CategoriesPage()
      },
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(20, 52, 52, 1)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 52, 52, 1)),
              headline6: TextStyle(
                  fontSize: 25, fontFamily: 'Tapestry', color: Colors.white))),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text('Food\'s categories '),
          ),
          body: CategoriesPage()),
    );
  }
}
