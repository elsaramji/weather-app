import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapping/Cubit/cubits/future_weather_cubit.dart';
import 'package:wetherapping/Cubit/states/weather_future.dart';
import 'package:wetherapping/Cubit/states/weather_states.dart';
import 'package:wetherapping/views/addingcityview.dart';
import 'package:wetherapping/views/errorview.dart';
import 'weather_builder_group.dart';

class SelecetStateViwe extends StatelessWidget {
  const SelecetStateViwe({
    super.key,
  });

  @override

  /// Builds the [Scaffold] widget for the application's main view.
  ///
  /// This method is responsible for rendering the appropriate UI based on the current state of the [WeatherFutuerCubit].
  /// If the state is [WeatherFutuerInitial], it displays the [Addingcityview].
  /// If the state is [WeatherFutuerLoadSuccess], it displays the [HomeWeather] widget.
  /// If the state is [Weatherfutuererror], it displays the [Errormassage] widget with the error message.
  /// If the state is none of the above, it displays the [Addingcityview].
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WeatherFutuerCubit, WeatherStates>(
        builder: (context, state) {
          if (state is WeatherFutuerInitial) {
            return const Addingcityview();
          } else if (state is WeatherFutuerLoadSuccess) {
            return const HomeWeather();
          } else if (state is Weatherfutuererror) {
            return Errormassage(
              message: state.message,
            );
          } else {
            return const Addingcityview();
          }
        },
      ),
    );
  }
}
