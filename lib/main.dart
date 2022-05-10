import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // runApp
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void decrement() {
    print("decrement");
  }

  void increment() {
    print("Increment");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Pode entrar",
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            "0",
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement, // não se passa os parenteses
                child: Text(
                  "Saiu",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                onPressed:
                    increment, // não se passa os parenteses, se não está chamando o retorno da função
                child: Text(
                  "Entrou",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
