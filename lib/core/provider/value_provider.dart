import 'package:flutter/material.dart';

class ValueProvider extends ChangeNotifier {
  String _value = "Hello from A!";

  String get value => _value;

  void updateValue(String newValue) {
    _value = newValue;
    notifyListeners();
  }
}
