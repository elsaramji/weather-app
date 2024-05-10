import 'package:flutter/material.dart';
import 'package:wetherapping/Model/weather_day_model.dart';
import 'package:wetherapping/widgets/Pacagepices/barunderbage.dart';

import 'weather_cityinfo.dart';
import 'weather_digetal_screen.dart';
import 'weather_moreinfo.dart';

class HomeWidgets extends StatelessWidget {
  final WeatherCurnetModel weatherCurnetModel;

  const HomeWidgets({super.key, required this.weatherCurnetModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          WeatherWidget(
            weatherCurnetModel: weatherCurnetModel,
          ),
          CityinfoWidget(
            weatherCurnetModel: weatherCurnetModel,
          ),
          const MoreinfoWidget()
        ],
      ),
    );
  }
}
