/*import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final message = Provider(
  (ref) => 'SAYAÇ',
);
final sayacIslemi = ChangeNotifierProvider(((ref) => SayacProvider()));

class SayacProvider with ChangeNotifier {
  int _value = 0;
  int get value => _value;

  sayacArt() {
    _value++;
    notifyListeners();
  }
  sayacSifirla(){
    _value = 0;
    notifyListeners();
  }
}*/
