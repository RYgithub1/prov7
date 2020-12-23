import 'package:flutter/foundation.dart';



/// [kick: extends ChangeNotifier]
class WeatherModel with ChangeNotifier{

  String _temperatureType = "celcius";
  String get temperatureType => _temperatureType;
  set temperatureType(String newTemperatureType) {
    _temperatureType = newTemperatureType;

    notifyListeners();
  }


  int _temperatureValue = 40;
  int get temperatureValue => _temperatureValue;
  set temperatureValue(int newTemperatureValue) {
    _temperatureValue = newTemperatureValue;

    notifyListeners();
  }



}