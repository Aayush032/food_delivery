import 'package:flutter/material.dart';
import 'package:food_delivery/theme/dark_theme.dart';
import 'package:food_delivery/theme/light_theme.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData _themeData = lightTheme;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkTheme;

  set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(){
    if(_themeData == lightTheme){
      themeData = darkTheme;
    }
    else{
      themeData = lightTheme;
    }
  }
}