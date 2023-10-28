import 'package:dependencias_getx/app/ui/page/404/methods/lazyput/controller/lazy_put_fenix_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/lazy_put_controller.dart';

class LazyPutPage extends StatefulWidget {
  LazyPutPage({super.key}) {


    Get.lazyPut(() => LazyPutController());
/// Mata a instância do controller quando a página é fechada
/// porém matem ele mantém a factory ativa dentro do Get fazendo com que
/// tenha a possibilidade de acessa-la de qualquer lugar ra sempre dentro do Get
    Get.lazyPut(() => LazyPutFenixController(), fenix: true);
/// Mantém a instância dentro do Get, sendo assim quando você pedir a classe
/// ele retornar a mesma instãncia anterior
/// 

  }

  @override
  State<LazyPutPage> createState() => _LazyPutPageState();
}

class _LazyPutPageState extends State<LazyPutPage> {
  String nome = '';
  String nomeFenix = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lazy Put Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nome: $nome'),
            Text('Nome Fenix: $nomeFenix'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutFenixController>();
                nomeFenix = controller.nome;
                setState(() {});
              },
              child: const Text('Find name Fenix'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<LazyPutFenixController>();
                controller.nome = 'Gilvan Costa Fenix';
                //  nome = controller.nome;
                //  setState(() {});
              },
              child: const Text('Change name Fenix'),
            ),
          ],
        ),
      ),
    );
  }
}
