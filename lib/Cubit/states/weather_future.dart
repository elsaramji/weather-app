import 'package:wetherapping/Cubit/states/weather_states.dart';

class WeatherFutuerInitial extends WeatherStates {}

class WeatherFutuerLoadSuccess extends WeatherStates {}

class Weatherfutuererror extends WeatherStates {
  final String message;

  Weatherfutuererror({required this.message});
}
