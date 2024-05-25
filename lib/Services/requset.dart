import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:wetherapping/Model/weather_futuer_model.dart';

import '../Model/weather_day_model.dart';

class RequsetWeatherApi {
  Dio dio = Dio();
  String url = "http://api.weatherapi.com/v1";

  /// Retrieves the current weather for the specified city.
  ///
  /// This method sends a request to the weather API to fetch the current weather
  /// for the given city name. It returns a [WeatherCurnetModel] object containing
  /// the weather data.
  ///
  /// Parameters:
  /// - [cityName]: The name of the city to retrieve the weather for.
  ///
  /// Throws:
  /// - Any exceptions that may occur during the API request.
  Future getCurnetWeather({required String cityName}) async {
    try {
      Response responseone = await dio.get(
          "$url/forecast.json?key=f1d0774a7963492cbbb145610240505&q=$cityName&days=1");
      return WeatherCurnetModel.fromJson(json: responseone.data);
    } catch (e) {
      log(e.toString());
    }
  }
}





// API link: http://api.weatherapi.com/v1/forecast.json?key=f1d0774a7963492cbbb145610240505&q=cairo&days=7