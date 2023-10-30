import 'package:get/get.dart';

import 'auth_model.dart';

class InitialBindigs implements Bindings {
  @override
  void dependencies() {
    Get.put(
      AuthModel(
        name: 'Initial Bindigs',
        email: 'teste@teste.com',
        curso: '123456',
      ),
      permanent: true,
    );
  }
}
