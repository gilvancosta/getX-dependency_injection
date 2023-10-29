import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../binding/bindings_page.dart';
import '../binding/controller/binding_controller.dart';
import '../binding/services/bindins_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/basico');
                //  Navigator.pushNamed(context, '/basico');
              },
              child: const Text('Button 1'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/methods');
                },
                child: const Text('Methods Page')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/bindings');
                },
                child: const Text('Bindings Page')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/bindings-builder');
                },
                child: const Text('Bindings Builder Page')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/bindings-builder-put');
                },
                child: const Text('Bindings Builder Put Page')),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.to(const BindingsPage(), binding: BindingsBuilder.put(() => BindingController(name: 'Binding sem Rota Nomeada')));
                },
                child: const Text('Bindings sem Rota Nomeada')),
          ],
        )));
  }
}
