
import 'package:get/get.dart';

import '../controller/binding_controller.dart';

class BindinsServices extends Bindings {




  @override
  void dependencies() {
    Get.put(BindingController(name: 'Bindings Page - Adicionado no Inicio222'));
  }
  
}