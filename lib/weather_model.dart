import 'package:flutter/foundation.dart';



class WeatherModel {

  String _temperatureType = "celcius";
  String get temperatureType => _temperatureType;
  set temperatureType(String newTemperatureType) {
    _temperatureType = newTemperatureType;
  }

  int _temperatureValue = 22;
  int get temperatureValue => _temperatureValue;
  set temperatureValue(int newTemperatureValue) {
    _temperatureValue = newTemperatureValue;
  }



}