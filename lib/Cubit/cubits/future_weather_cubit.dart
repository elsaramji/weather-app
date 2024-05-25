import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapping/Cubit/states/weather_future.dart';
import 'package:wetherapping/Cubit/states/weather_states.dart';
import 'package:wetherapping/Model/weather_futuer_model.dart';
import 'package:wetherapping/Services/requsetfutuer.dart';

class WeatherFutuerCubit extends Cubit<WeatherStates> {
  late List<WeatherFutuerModle> modles;
  WeatherFutuerCubit() : super(WeatherFutuerInitial());

  /// Asynchronously retrieves the future weather forecast for the specified city name.
  ///
  /// This method sends a request to the `RequsetfutuerWeatherApi` to fetch the future weather
  /// forecast for the given city name. If the request is successful, it emits a
  /// `WeatherFutuerLoadSuccess` event. If there is an error, it emits a `Weatherfutuererror`
  /// event with the error message.
  ///
  /// Parameters:
  /// - `cityName`: The name of the city for which to retrieve the future weather forecast.
  ///
  /// Returns:
  /// A `Future` that completes when the weather forecast has been retrieved or an error has occurred.
  Future getfutuerWeather({required String cityName}) async {
    try {
      modles =
          await RequsetfutuerWeatherApi().getFutuerWeather(cityName: cityName);
      emit(WeatherFutuerLoadSuccess());

      log(modles.toString());
    } catch (e) {
      log(e.toString());
      emit(Weatherfutuererror(message: e.toString()));
    }
  }
}
