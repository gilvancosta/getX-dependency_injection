// ignore_for_file: avoid_print

import 'package:dependencias_getx/app/ui/page/404/methods/update/controller/update_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdatePage extends StatefulWidget {
  UpdatePage({super.key}) {
    print('UpdatePage - constructor');
    Get.put(UpdateController(name: 'UpdatePage - Adicionado no Inicio'));
  }

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nome: $name',
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = Get.find<UpdateController>().name;
                });
              },
              child: const Text('Update Page'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Get.replace(UpdateController(name: 'Instância Alterada'));
                });
              },
              child: const Text('Alterando Instância'),
            ),
          ],
        ),
      ),
    );
  }
}
