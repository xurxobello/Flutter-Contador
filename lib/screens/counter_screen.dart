import 'package:flutter/material.dart';


class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  void increase () {
    setState(() {
      counter++;
    });
  }

  void decrease () {
    setState(() {
      counter--;
    });
  }

  void reset () {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(increaseFunction: increase, decreaseFunction: decrease, resetFunction: reset),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFunction;
  final Function decreaseFunction;
  final Function resetFunction;

  const CustomFloatingActions({
    Key? key, required this.increaseFunction, required this.decreaseFunction, required this.resetFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFunction()
        ),

        // SizeBox es un Widget que nos permite definir una caja invisible a la que podemos dar tamaño
        // const SizedBox( width: 40),

        FloatingActionButton(
          child: const Icon(Icons.restart_alt),
          onPressed: () => resetFunction(),
        ),

        // const SizedBox( width: 40),

        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFunction(),
        ),

      ],
    );
  }
}