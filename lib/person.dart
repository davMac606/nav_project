import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    
      appBar: AppBar(
        title: const Text('Pessoa')
      ),
      body: Center(child: Column(children: [Text("Pessoa")]),)
    );
  }
}