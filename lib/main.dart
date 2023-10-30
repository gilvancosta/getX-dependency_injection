import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/app.dart';
import 'app/ui/page/getx_services/services/storage_services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.putAsync(() => StorageServices().init());

  runApp(const MyApp());
}
