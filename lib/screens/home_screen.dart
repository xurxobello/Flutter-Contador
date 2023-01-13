

import 'package:flutter/material.dart';

// al hacer un StatelessWidget no podemos colorear en pantalla los nuevos valores ya que es un estado que no se modifica, por lo que vamos a dejar esto como muestra ya que los datos si los obtenemos por consola y vamos a seguir con un nuevo archivo llamado counter_screen.dart

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);

    int counter = 0;

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

          // <Widget> nos obliga a que dentro sólo pueda haber widgets
          children: <Widget>[
          const Text('Número de clicks:', style: fontSize30),
          Text('$counter', style: fontSize30)
        ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
          print ('Hola mundo: $counter');
        }
      ),
    );
  }
  
}