import 'package:flutter/material.dart';
import 'package:wetherapping/Model/weather_day_model.dart';
import 'package:wetherapping/widgets/cityinfobliud.dart';

class CityinfoWidget extends StatelessWidget {
  final WeatherCurnetModel weatherCurnetModel;
  const CityinfoWidget({super.key, required this.weatherCurnetModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.5),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xff202B3B),
        borderRadius: BorderRadius.circular(25),
      ),
      child: CityinfoContant(
        weatherCurnetModel: weatherCurnetModel,
      ),
    );
  }
}
