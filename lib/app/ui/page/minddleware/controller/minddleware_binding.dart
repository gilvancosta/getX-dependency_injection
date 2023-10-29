// ignore_for_file: avoid_print

import 'package:get/get.dart';

class MinddlewareBinding extends GetMiddleware {
  // executado antes de entrar na rota
  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    print('onBindingsStart 1111');
    return super.onBindingsStart(bindings);
  }

// executado depois de entrar na rota
  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    print('onPageBuildStart 2222');
    return super.onPageBuildStart(page);
  }
}
