

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen AppBar'),
        elevation: 10.5,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment sirve para alinear verticalmente dentro de la columna que se encuentra
          mainAxisAlignment: MainAxisAlignment.center,

          // crossAxisAlignment sirve para alinear horizontalmente pero dentro teniendo en cuenta únicamente el tamaño de los hijos
          crossAxisAlignment: CrossAxisAlignment.center,

          // <Widget> nos obliga a que dentro sólo pueda haber widgets, podríamos dejarlo únicamente con const
          children: const <Widget>[
          Text('Número de clicks:', style: fontSize30),
          Text('0', style: fontSize30)
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print ('Hola mundo');
        }
      ),
    );
  }
  
}