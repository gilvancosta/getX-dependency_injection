import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'initial/auth_model.dart';

class InitialBingingPage extends StatelessWidget {
  const InitialBingingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Initial Binding Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Nome: ${Get.find<AuthModel>().name}'),
              Text('Email: ${Get.find<AuthModel>().email}'),
              Text('Curso: ${Get.find<AuthModel>().curso}'),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: const Text('Initial Binding Page'),
              ),
            ],
          ),
        ));
  }
}
