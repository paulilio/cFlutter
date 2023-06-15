import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

//Controle Estado: Classe de Controller + Model
class ExController extends GetxController {
  //Podemos usar a classe ExController de forma estática (chamada direta)
  static ExController get to => Get.find();

  String titulo = 'Aplicativo Exemplo Getx TM exC';
  int valor = 0;

  void incrementaValor() {
    valor++;

    //Notificação a View, pois não usa ChangeNotifier
    update();
  }
}

class MyApp extends StatelessWidget {
  //final excontroller = Get.put(ExController());

  var numero = 0.obs;

  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () => numero++,
            child: Obx(() => Text(
                  'Valor: ${numero}',
                  style: const TextStyle(fontSize: 30),
                )),
          ),
        ),
      ),
    );
  }
}
