import 'package:dependencias_getx/app/ui/page/binding/controller/binding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BindingsPage extends StatelessWidget {
  const BindingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bindings Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Get.find<BindingController>().name,
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Bindings Builder Page'),
            ),
          ],
        ),
      ),
    );
  }
}
