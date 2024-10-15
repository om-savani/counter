import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int counter = 0;
  ThemeMode mode = ThemeMode.light;
  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }

  void TwoX() {
    counter = counter * 2;
    notifyListeners();
  }

  void ThreeX() {
    counter = counter * 3;
    notifyListeners();
  }

  void FourX() {
    counter = counter * 4;
    notifyListeners();
  }

  void reset() {
    counter = 0;
    notifyListeners();
  }
}
