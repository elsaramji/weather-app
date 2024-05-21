import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:wetherapping/Model/weather_futuer_model.dart';

import '../Model/weather_day_model.dart';

class RequsetWeatherApi {
  Dio dio = Dio();
  String url = "http://api.weatherapi.com/v1";

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

class RequsetfutuerWeatherApi {
  Dio dio = Dio();
  String url = "http://api.weatherapi.com/v1";

  Future getFutuerWeather({
    required String cityName,
  }) async {
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



//  http://api.weatherapi.com/v1/forecast.json?key=f1d0774a7963492cbbb145610240505&q=cairo&days=7