import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/page/404/methods/create/create_page.dart';
import 'ui/page/404/methods/delete/delete_page.dart';
import 'ui/page/404/methods/lazyput/lazy_put_page.dart';
import 'ui/page/404/methods/methods_page.dart';
import 'ui/page/404/methods/put/put_page.dart';
import 'ui/page/404/methods/put_async/put_async.dart';
import 'ui/page/404/methods/update/update_page.dart';
import 'ui/page/404/page_404.dart';
import 'ui/page/binding/binding_Builder_page.dart';
import 'ui/page/binding/binding_Builder_put_page.dart';
import 'ui/page/binding/bindings_page.dart';
import 'ui/page/binding/controller/binding_controller.dart';
import 'ui/page/binding/services/bindins_services.dart';
import 'ui/page/getx_services/getx_services_page.dart';
import 'ui/page/home/home_page.dart';
import 'ui/page/basico/basico_page.dart';
import 'ui/page/inital_binding/initial/initial_bindigs.dart';
import 'ui/page/inital_binding/initial_binging_page.dart';
import 'ui/page/minddleware/controller/minddleware_binding.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBindigs(),
//
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/404', page: () => const Page404()),
        GetPage(name: '/basico', page: () => BasicoPage()),
        GetPage(
          name: '/methods',
          page: () => const MethodsPage(),
          children: [
            GetPage(name: '/put', page: () => const PutPage()),
            GetPage(name: '/lazyput', page: () => LazyPutPage()),
            GetPage(name: '/putasync', page: () => PutAsync()),
            GetPage(name: '/create', page: () => CreatePage()),
            GetPage(name: '/update', page: () => UpdatePage()),
            GetPage(name: '/delete', page: () => DeletePage()),
          ],
        ),
        GetPage(
          name: '/bindings',
          binding: BindinsServices(),
          middlewares: [
            MinddlewareBinding(),
          ],
          page: () => const BindingsPage(),
        ),
        GetPage(
          name: '/bindings-builder',
          binding: BindingsBuilder(() {
            Get.put(BindingController(name: 'Binding Builder'));
          }),
          page: () => const BindingBuilderPage(),
        ),
        GetPage(
          name: '/bindings-builder-put',
          binding: BindingsBuilder.put(() => BindingController(name: 'Binding Builder put')),
          page: () => const BindingBuilderPutPage(),
        ),
        GetPage(
          name: '/initial-binding',
          page: () => const InitialBingingPage(),
        ),
        GetPage(
          name: '/getx-services',
          page: () => const GetxServicesPage(),
        ),
      ],
      unknownRoute: GetPage(name: '/404', page: () => const Page404()),
    );
  }
}
