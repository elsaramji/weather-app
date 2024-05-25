import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetherapping/Model/weather_day_model.dart';

class AllDayWeather extends StatelessWidget {
  final WeatherCurnetModel weatherCurnetModel;
  const AllDayWeather({super.key, required this.weatherCurnetModel});

  @override

  /// Builds a widget that displays the current weather information for a specific location.
  ///
  /// This widget is responsible for rendering the weather icon, the city name, the current temperature range, and the datetime of the weather data.
  ///
  /// The widget is contained within a [Container] with a fixed height of 200 and a rounded border. The weather icon is displayed on the left side, and the text information is displayed on the right side.
  ///
  /// The weather data is provided through the [weatherCurnetModel] parameter, which is assumed to be a model containing the necessary weather information.
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.5),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xff202B3B),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
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
      ),
    );
  }
}
