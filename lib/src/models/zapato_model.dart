import 'package:flutter/material.dart';

class ZapatoModel with ChangeNotifier{

  String _assetImageSelected = 'assets/azul.png';
  double _tallaSeleccionada = 24;

  double get tallaSeleccionada => this._tallaSeleccionada;
  String get assetImageSelected => this._assetImageSelected;

  set tallaSeleccionada(double tallaSeleccionada) {
    this._tallaSeleccionada = tallaSeleccionada;
    notifyListeners();
  }

  set assetImageSelected(String assetImageSelected) {
    this._assetImageSelected = assetImageSelected;
    notifyListeners();
  }

}

