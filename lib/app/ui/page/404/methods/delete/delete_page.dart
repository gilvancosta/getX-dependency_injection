// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controller/delete_controller.dart';

class DeletePage extends StatefulWidget {
  DeletePage({super.key}) {
    print('UpdatePage - constructor');
    Get.put(DeleteController(name: 'UpdatePage - Adicionado no Inicio'));
  }

  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Page'),
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
                  name = Get.find<DeleteController>().name;
                });
              },
              child: const Text('Update Page'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Get.delete<DeleteController>();
                });
              },
              child: const Text('Removendo Instância'),
            ),
          ],
        ),
      ),
    );
  }
}
