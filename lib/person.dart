import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Pessoa'), actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              }, icon: const Icon(Icons.shopping_cart))
          ,
        ]),
        body: Center(
          child: Column(children: [
            Text("Pessoa"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Voltar"))
         ]),
        ));
  }
}
