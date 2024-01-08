import 'package:flutter/material.dart';

class ContainerProvider extends ChangeNotifier{
  bool resize = false;

  void resizeContainer(){
    resize = !resize;
    notifyListeners();
  }
}