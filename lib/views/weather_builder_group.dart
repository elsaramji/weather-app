import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapping/Cubit/cubits/curnet_weather_cubit.dart';
import 'package:wetherapping/widgets/bottomcontroler.dart';
import 'package:wetherapping/widgets/day_weather_group.dart';
import 'package:wetherapping/widgets/weather_curnet_group.dart';

import '../widgets/forcast_weather_group.dart';
class HomeWeather extends StatelessWidget {
  const HomeWeather({super.key});

  @override

  /// Builds the main weather screen, which includes the current weather, all-day weather, and forecast weather group.
  ///
  /// This method is the `build` method of a `StatelessWidget` that is responsible for rendering the weather screen.
  /// It retrieves the current weather model from the `WeatherCurnetCubit` and uses it to populate the various weather components
  /// on the screen, such as the `CurnetWeather`, `AllDayWeather`, and `ForcastWeatherGroup` widgets.
  /// The screen is wrapped in a `Scaffold` widget, which provides the bottom navigation bar.
  Widget build(BuildContext context) {
    final curnetweathermodel =
        BlocProvider.of<WeatherCurnetCubit>(context).model;
    return Scaffold(
      bottomNavigationBar: const BottomControler(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurnetWeather(weatherCurnetModel: curnetweathermodel),
            AllDayWeather(
              weatherCurnetModel: curnetweathermodel,
            ),
            const ForcastWeatherGroup(),
          ],
        ),
      ),
    );
  }
}
