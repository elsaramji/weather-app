import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ), // Assuming ImageStream is a Widget
        Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                weatherCurnetModel.cityName,
                style: GoogleFonts.cairo(fontSize: 20),
              ),
              Text(
                  " ${weatherCurnetModel.mixTemp.toString()} | ${weatherCurnetModel.minTemp.toString()} °C",
                  style: GoogleFonts.cairo(fontSize: 20)),
              Text("${weatherCurnetModel.datetime} ",
                  style: GoogleFonts.cairo(fontSize: 13.5)),
            ]),
      ],
    );
  }
}
