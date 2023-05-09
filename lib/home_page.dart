import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Principal'),actions: [
          IconButton( onPressed: (){
            Navigator.pushNamed(context, '/person');
          }, icon: const Icon(Icons.login)),
          IconButton( onPressed: (){
            Navigator.pushNamed(context, '/cart');

          }, icon: const Icon(Icons.shopping_cart)),

          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/favorite');
          }, icon: const Icon(Icons.star))
        ],
      ),
    );
  }
}
