import 'package:flutter/material.dart';
import 'package:navigator/second_page.dart';

class OnePage extends StatelessWidget {
  OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testando Navegação'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SecondPage(
                        args: 'Teste',
                      )));
            },
            child: const Text('CLICKA AQUI PORRA'),
          ),
        ),
      ),
    );
  }
}
