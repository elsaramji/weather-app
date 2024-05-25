import 'package:wetherapping/Cubit/states/weather_states.dart';

/// Represents the initial state of the WeatherFuture.
class WeatherFutuerInitial extends WeatherStates {}

/// Represents the successful loading state of the WeatherFuture.
class WeatherFutuerLoadSuccess extends WeatherStates {}

/// Represents an error state of the WeatherFuture.
///
/// [message] contains the error message.
class Weatherfutuererror extends WeatherStates {
  /// The error message.
  final String message;

  /// Creates a new [Weatherfutuererror] instance with the given [message].
  Weatherfutuererror({required this.message});
}

