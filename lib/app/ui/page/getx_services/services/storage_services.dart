import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageServices extends GetxService {
  late final SharedPreferences _prefs;

  Future<StorageServices> init() async {
    _prefs = await SharedPreferences.getInstance();
    _prefs.setString('service', 'String adicionada de dentro de um service');
    return this;
  }

  T getValue<T>(String key) => _prefs.get(key) as T;


}
