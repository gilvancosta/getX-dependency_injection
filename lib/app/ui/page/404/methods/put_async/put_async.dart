import 'package:flutter/material.dart';

class PutAsync extends StatefulWidget {
  const PutAsync({super.key});

  @override
  State<PutAsync> createState() => _PutAsyncState();
}

class _PutAsyncState extends State<PutAsync> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page Put Async'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/404');
                },
                child: const Text('404 Page'),
              ),
            ],
          ),
        ));
  }
}
