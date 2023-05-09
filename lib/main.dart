import 'package:flutter/material.dart';
import 'package:nav_project/home_page.dart';
import 'package:nav_project/person.dart';
import 'package:nav_project/shopping.dart';
import 'package:nav_project/fav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => MyWidget(),
        '/person': (context) => Person(),
        '/cart': (context) => Cart(),
        '/favorite': (context) => Favorite(),
      }
    );
  }
}

