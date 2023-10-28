import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/put_controller.dart';
import 'controller/put_controller_permanent.dart';
import 'controller/put_controller_tag.dart';

class PutPage extends StatefulWidget {
  const PutPage({super.key});

  @override
  State<PutPage> createState() => _PutPageState();
}

class _PutPageState extends State<PutPage> {
  final controller = Get.put(PutController());
  final controller2 = Get.put(PutControllerPermanent(), permanent: true);

  final controllerTagx = Get.put(PutControllerTag(tag: 'tagx'), tag: 'tagx');
  final controllerTagy = Get.put(PutControllerTag(tag: 'tagy'), tag: 'tagy');
  final controllerTagz = Get.put(PutControllerTag(tag: 'tagz'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Put Page'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Time put1: ${controller.timestamp}'),
            const SizedBox(height: 20),
            Text('Time put2: ${controller2.timestamp}'),
            const SizedBox(height: 20),
            const WidgetInterno(),
          ],
        )));
  }
}

class WidgetInterno extends StatelessWidget {
  const WidgetInterno({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('tag: ${Get.find<PutControllerTag>(tag: 'tagx').tag}'),
        const SizedBox(height: 20),
        Text('tag: ${Get.find<PutControllerTag>(tag: 'tagy').tag}'),
        const SizedBox(height: 20),
        Text('tag: ${Get.find<PutControllerTag>().tag}'),
        const SizedBox(height: 20),
      ],
    );
  }
}
