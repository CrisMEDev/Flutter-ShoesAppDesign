import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' as services;

void cambiarStatusLight(){
  services.SystemChrome.setSystemUIOverlayStyle(services.SystemUiOverlayStyle(
    statusBarColor: Color(0xFFE74C3C),
    systemNavigationBarDividerColor: Color(0xFF9F9F9F),
  ));
}

void cambiarStatusDark(){
  services.SystemChrome.setSystemUIOverlayStyle(services.SystemUiOverlayStyle.dark);
}
