import 'package:flutter/material.dart';
import 'package:wetherapping/widgets/forcast_weather_cerator.dart';

class ForcastWeatherGroup extends StatelessWidget {
  const ForcastWeatherGroup({super.key});

  @override

  /// Builds a container that displays a forecast weather group.
  ///
  /// The container has a height of 450, a margin of 12.5 horizontal and 22.5 vertical,
  /// and a width that spans the entire screen. The container has a rounded border
  /// with a radius of 25.
  ///
  /// Inside the container, a [ForcastWeatherCerator] widget is displayed.
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      margin: const EdgeInsets.symmetric(horizontal: 12.5, vertical: 22.5),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: const ForcastWeatherCerator(),
    );
  }
}
