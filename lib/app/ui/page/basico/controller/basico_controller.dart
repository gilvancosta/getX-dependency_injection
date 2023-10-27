import 'package:flutter/material.dart';


class BasicoController extends ChangeNotifier {
  var nome = '';

  void setNome(String value) {
    nome = value;
    notifyListeners();
  }
}
