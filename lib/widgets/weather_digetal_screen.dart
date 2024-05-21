import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetherapping/Model/weather_day_model.dart';

class WeatherWidget extends StatelessWidget {
  final WeatherCurnetModel weatherCurnetModel;
  const WeatherWidget({super.key, required this.weatherCurnetModel});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        width: double.infinity,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                weatherCurnetModel.cityName,
                style: GoogleFonts.cairo(color: Colors.white, fontSize: 25),
              ),
              Image.network(
                weatherCurnetModel.weathericon,
                width: 100,
                height: 100,
                fit: BoxFit.fill,
              ),
              Text(
                weatherCurnetModel.temp,
                style: GoogleFonts.cairo(fontSize: 30),
              ),
              Text(
                weatherCurnetModel.weatherDescription,
                style: GoogleFonts.cairo(fontSize: 25),
              ),
            ]));
  }
}
