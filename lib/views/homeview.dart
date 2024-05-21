import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapping/Cubit/cubits/future_weather_cubit.dart';
import 'package:wetherapping/Cubit/states/weather_future.dart';
import 'package:wetherapping/Cubit/states/weather_states.dart';
import 'package:wetherapping/views/notfoundcity.dart';

import 'package:wetherapping/views/selectecity.dart';
import 'package:wetherapping/widgets/Pacagepices/barunderbage.dart';
import 'package:wetherapping/widgets/home_view_bliud.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WeatherFutuerCubit, WeatherStates>(
        builder: (context, state) {
          if (state is WeatherFutuerInitial) {
            return const Selectecity();
          } else if (state is WeatherFutuerLoadSuccess) {
            return const HomeWidgets();
          } else if (state is Weatherfutuererror) {
            return NotfoundCityMassage(
              message: state.message,
            );
          } else {
            return const Selectecity();
          }
        },
      ),
    );
  }
}
