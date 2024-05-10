import 'package:wetherapping/Model/weather_day_model.dart';

class WeatherStates {}

class WeatherCurnetInitial extends WeatherStates {}

class WeatherCurnetLoadSuccess extends WeatherStates {
  final WeatherCurnetModel weatherCurnetModel;
  WeatherCurnetLoadSuccess({required this.weatherCurnetModel});
}

class Weathererror extends WeatherStates {}
