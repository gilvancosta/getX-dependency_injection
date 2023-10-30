import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'services/storage_services.dart';

class GetxServicesPage extends StatelessWidget {
  const GetxServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Services Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Service: ${Get.find<StorageServices>().getValue<String>('service')}'),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Getx Services Page'),
            ),
          ],
        ),
      ),
    );
  }
}
