import 'package:web_ui/web_ui.dart';
import 'dart:html';

class GaugeBar extends WebComponent{
  
  @observable int valor = 300;
  
  Element _div;
  
  GaugeBar(){
      
  }
  
  void increase(){
    _div = query("#bar");
    valor+=50;
    _div.style.width = "${valor}px";
  }
  
  void decrease(){
    _div = query("#bar");
    valor-=50;
    _div.style.width = "${valor}px"; 
  }
 
}