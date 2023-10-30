import 'package:flutter/cupertino.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherModel? _weatherData;
  String? cityName;

  void setWeatherData(WeatherModel data, String name) {
    _weatherData = data;
    cityName = name;
    notifyListeners();
  }

  WeatherModel? get weatherData => _weatherData;
}
