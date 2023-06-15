import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(home: Tela1());
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Tela 1')),
            body: Center(
              child: ElevatedButton(
                child: const Text('Ir para Tela 2'),
                onPressed: () {
                  print('Clicou no botão da tela 1');

                  Get.to(Tela2(), arguments: ['arg1', 'arg2']);
                  /*
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Tela2();
                  }));
                  */
                },
              ),
            )),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Tela 2 - ' + Get.arguments[0]),
            backgroundColor: Colors.red,
          ),
          body: Center(
              child: ElevatedButton(
                  child: const Text('Retornar a Tela 1'),
                  onPressed: () {
                    print('Clicou no botão da tela 2');

                    Get.back();
                    //Navigator.pop(context);
                  })),
        ),
      ),
    );
  }
}
