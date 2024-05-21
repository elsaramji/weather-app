import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapping/Cubit/states/weather_future.dart';
import 'package:wetherapping/Cubit/states/weather_states.dart';
import 'package:wetherapping/Model/weather_futuer_model.dart';
import 'package:wetherapping/Services/requset.dart';

class WeatherFutuerCubit extends Cubit<WeatherStates> {
  late List<WeatherFutuerModle> modles;
  WeatherFutuerCubit() : super(WeatherFutuerInitial());

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
