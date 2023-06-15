import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

//Controle Estado: Classe de Controller + Model
class ExController extends GetxController {
  String titulo = 'Aplicativo Exemplo Getx TM exC';
  int valor = 0;

  void incrementaValor() {
    valor++;

    //Notificação a View, pois não usa ChangeNotifier
    update();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: GetBuilder<ExController>(
            init: ExController(),
            builder: (obj) {
              return Scaffold(
                appBar: AppBar(
                  title: Text('${obj.titulo}'),
                ),
                body: Center(
                  child: GestureDetector(
                    onTap: () => obj.incrementaValor(),
                    child: Text(
                      'Valor: ${obj.valor}',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              );
            }));
  }
}
