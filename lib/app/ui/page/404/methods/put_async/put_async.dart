import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PutAsync extends StatefulWidget {
  PutAsync({super.key}) {
    // Com putAsync temos a possibilidade de salvar dados de forma assíncrona.
    Get.putAsync(() async {
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('name1', 'Put Async Exemplo1');
      return prefs;
    }, permanent: true); // nessa estrutura mesmo sendo permanente sempre vai ser executado.
  }

  @override
  State<PutAsync> createState() => _PutAsyncState();
}

class _PutAsyncState extends State<PutAsync> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Put Async'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nome1: $name',
              style: const TextStyle(fontSize: 30),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  name = Get.find<SharedPreferences>().getString('name1') ?? 'Nome não encontrado';
                });
              },
              child: const Text('Buscar Nome'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.find<SharedPreferences>().setString('name1', 'Put Async Nome Alterado');
              },
              child: const Text('Mudar Nome'),
            ),
          ],
        ),
      ),
    );
  }
}
