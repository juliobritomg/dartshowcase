import 'package:web_ui/web_ui.dart';
import 'dart:html';

class Dinamic extends WebComponent{
  
  @observable  int counter = 0;
  Element _div;
  
  Dinamic(){
    _div = query("#div");
  }
  
  void increment(){
    counter++;
  }
}