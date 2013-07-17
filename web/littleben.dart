import 'dart:async';
import 'package:web_ui/web_ui.dart';

class LittleBen extends WebComponent{
    @observable
    String current_time;
    
    LittleBen(){
      var oneSecond = new Duration(seconds:1);
      var timer = new Timer.periodic(oneSecond, updateTime);
      updateTime(timer);
    }
    
    void updateTime(Timer _){
    
      DateTime today = new DateTime.now();
      current_time = formatTime(today.hour, today.minute, today.second);
    }
    
    String formatTime(int h, int m, int s){
      if(h>12){ h = h-12; }
      
      String minute = (m <= 9) ? '0$m' : '$m';
      String second = (s <= 9) ? '0$s' : '$s';
      
      return '$h:$minute:$second'; 
    }
}




