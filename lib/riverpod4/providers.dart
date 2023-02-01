import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final state = ChangeNotifierProvider(((ref) => StateClass()));

class StateClass extends ChangeNotifier {
  int sayac = 0;
  String sehir = "İstanbul";


  void sayacArttir() {
    sayac++;
    notifyListeners();
  }

  void sayacAzalt() {
    if (sayac == 0) {
    }else{
      sayac--;
    }
    notifyListeners();
  }

  void sayacSifirla() {
    sayac = 0;
    notifyListeners();
  }

  void sehirDegistir(String city) {
    sehir = city;
    notifyListeners();
  }
}

