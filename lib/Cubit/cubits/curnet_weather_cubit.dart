import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapping/Cubit/states/weather_states.dart';
import 'package:wetherapping/Model/weather_day_model.dart';
import 'package:wetherapping/Services/requset.dart';

class WeatherCurnetCubit extends Cubit<WeatherStates> {
  WeatherCurnetCubit() : super(WeatherCurnetInitial());

  void getWeather({required String city}) async {
    try {
      WeatherCurnetModel model =
          await RequsetWeatherApi().getCurnetWeather(cityName: city);
      emit(WeatherCurnetLoadSuccess(weatherCurnetModel: model));
    } catch (e) {
      log(e.toString());
      emit(Weathererror());
    }
  }
}
