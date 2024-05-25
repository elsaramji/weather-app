import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapping/Cubit/states/weather_states.dart';
import 'package:wetherapping/Model/weather_day_model.dart';
import 'package:wetherapping/Services/requset.dart';

class WeatherCurnetCubit extends Cubit<WeatherStates> {
  late WeatherCurnetModel model;
  WeatherCurnetCubit() : super(WeatherCurnetInitial());

  /// Asynchronously retrieves the current weather for the specified city.
  ///
  /// This method makes a request to the [RequsetWeatherApi] to fetch the current weather
  /// for the given city name. If the request is successful, it emits a [WeatherCurnetLoadSuccess]
  /// event. If an error occurs, it emits a [Weathererror] event and logs the error.
  ///
  /// Parameters:
  /// - [city]: The name of the city to retrieve the current weather for.
  Future getWeather({required String city}) async {
    try {
      model = await RequsetWeatherApi().getCurnetWeather(cityName: city);
      emit(WeatherCurnetLoadSuccess());
    } catch (e) {
      log(e.toString());
      emit(Weathererror());
    }
  }
}
