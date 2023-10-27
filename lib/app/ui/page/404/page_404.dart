import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Não Existo'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('404'),
            Text('Página não encontrada'),
          ],
        ),
      ),
    );
  }
}
