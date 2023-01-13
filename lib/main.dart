import 'package:flutter/material.dart';

import 'package:contador/screens/home_screen.dart';

// creamos una función main a la que llamar
void main(){
  // ejecutamos nuestro primer widget "runApp", lo haremos desde material y no desde cupertino
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // con el siguiente debub quitamos la misma palabra de la app en la esquina superior derecha
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  
  }
  
}