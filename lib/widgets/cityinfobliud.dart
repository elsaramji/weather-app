import 'package:flutter/material.dart';
import 'package:wetherapping/Model/weather_day_model.dart';

class CityinfoContant extends StatelessWidget {
  final WeatherCurnetModel weatherCurnetModel;
  const CityinfoContant({super.key, required this.weatherCurnetModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.network(
          weatherCurnetModel.weathericon,
          width: 100,
          height: 100,
          fit: BoxFit.fill,
        ),
        Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(weatherCurnetModel.cityName,
                  style: const TextStyle(fontSize: 30)),
              Text(
                  " ${weatherCurnetModel.mixTemp.toString()} | ${weatherCurnetModel.minTemp.toString()} °C",
                  style: const TextStyle(fontSize: 30)),
              Text("${weatherCurnetModel.datetime} AM",
                  style: const TextStyle(fontSize: 13.5)),
            ]),
      ],
    );
  }
}
