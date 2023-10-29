import 'package:dependencias_getx/app/ui/page/404/methods/create/controller/create_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreatePage extends StatefulWidget {
  CreatePage({super.key}) {

    // é criado uma nova instãncia a cada chamada
    Get.create(() => CreateController());
    Get.put(CreateController(), tag: 'put');
  }

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  String namedDate = '';
  String namedDatePut = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Create Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Named Date: $namedDate',
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 20),
              Text(
                'Named Date Put: $namedDatePut',
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    namedDate = Get.find<CreateController>().dateName;
                  });
                },
                child: const Text('With Create'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    namedDatePut = Get.find<CreateController>(tag: 'put').dateName;
                  });
                },
                child: const Text('With put'),
              ),
            ],
          ),
        ));
  }
}
