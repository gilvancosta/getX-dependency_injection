import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/basico_controller.dart';

class BasicoPage extends StatelessWidget {
  final controller = Get.put(BasicoController());

  BasicoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Básico Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                controller.setNome('Gilvan Costa');
              },
              child: const Text('Adicione o nome'),
            ),
            AnimatedBuilder(
              animation: controller,
              builder: (context, child) => Text(
                'Nome: ${controller.nome}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const WidgetInterno(),
          ],
        ),
      ),
    );
  }
}

class WidgetInterno extends StatelessWidget {
  const WidgetInterno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Widget Interno'),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => Get.find<BasicoController>().setNome('Gilvan Araujo'),
          child: const Text('Alterar Nome'),
        )
      ],
    );
  }
}
