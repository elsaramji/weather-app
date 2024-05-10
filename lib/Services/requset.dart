import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:wetherapping/Model/weather_futuer_model.dart';

import '../Model/weather_day_model.dart';

class RequsetWeatherApi {
  Dio dio = Dio();
  String url = "http://api.weatherapi.com/v1";

  Future getCurnetWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
          "$url/forecast.json?key=f1d0774a7963492cbbb145610240505&q=$cityName&days=1");
      return WeatherCurnetModel.fromJson(json: response.data);
    } catch (e) {
      log(e.toString());
    }
  }

  Future<WeatherFutuerModle> getFutuerWeather(
      {required String cityName, required int index}) async {
    Response response = await dio.get(
        "$url/forecast.json?key=f1d0774a7963492cbbb145610240505&q=$cityName&days=7");
    return WeatherFutuerModle.fromJson(json: response.data, index: index);
  }
}
