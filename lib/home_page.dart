// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

//atributos, underline pois é privado

int _indice = 0;

//void para mudar o estado do indice
void _onItemTapped(int index){
  setState(() {
    _indice = index;
  });
  switch (_indice) {
    case 0:
      Navigator.pushNamed(context, '/person');
      break;
    case 1:
      Navigator.pushNamed(context, '/cart');
      break;
    case 2:
      Navigator.pushNamed(context, '/favorite');
      break;
  }
}



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
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
        
        currentIndex: _indice,
        onTap: _onItemTapped,
        
        
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person",),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart",),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorite",),
      ]),
    );
  }
}
