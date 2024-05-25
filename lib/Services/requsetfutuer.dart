import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:wetherapping/Model/weather_futuer_model.dart';

class RequsetfutuerWeatherApi {
  Dio dio = Dio();
  String url = "http://api.weatherapi.com/v1";
  /// Retrieves the future weather forecast for the specified city.
  ///
  /// This method makes a request to the weather API to fetch the 7-day weather forecast
  /// for the given city name. It returns a list of [WeatherFutuerModle] instances
  /// representing the forecast for each day.
  ///
  /// Parameters:
  /// - [cityName]: The name of the city to retrieve the weather forecast for.
  ///
  /// Returns:
  /// A list of [WeatherFutuerModle] instances representing the 7-day weather forecast
  /// for the specified city.
  Future getFutuerWeather({
    required String cityName,
  }) async {
    // Implementation details omitted for brevity

    try {
      Response responsetow = await dio.get(
          "$url/forecast.json?key=f1d0774a7963492cbbb145610240505&q=$cityName&days=7");
      log(responsetow.toString());

      return List.generate(7, (index) {
        return WeatherFutuerModle.fromJson(
            json: responsetow.data, index: index);
      });
    } catch (e) {
      log("re: ${e.toString()}");
    }
  }
}