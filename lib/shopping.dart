import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Carrinho')),
        body: Center(
          child: Column(
            children: [
              Text("Carrinho"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Voltar"))
            ],
          ),
        ));
  }
}
