import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/page/404/page_404.dart';
import 'ui/page/home/home_page.dart';
import 'ui/page/basico/basico_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/basico', page: () => BasicoPage()),
        GetPage(name: '/404', page: () => const Page404()),
      ],
      unknownRoute: GetPage(name: '/404', page: () => const Page404()),
    );
  }
}
