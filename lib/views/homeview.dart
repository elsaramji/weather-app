import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapping/Cubit/cubits/curnet_weather_cubit.dart';
import 'package:wetherapping/Cubit/states/weather_states.dart';
import 'package:wetherapping/views/notfoundcity.dart';
import 'package:wetherapping/widgets/Pacagepices/barunderbage.dart';
import 'package:wetherapping/widgets/home_view_bliud.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const UnderBar(),
      body: BlocBuilder<WeatherCurnetCubit, WeatherStates>(
        builder: (context, state) {
          if (state is WeatherCurnetInitial) {
            return const NotfoundCityMassage();
          } else if (state is WeatherCurnetLoadSuccess) {
            return HomeWidgets(weatherCurnetModel: state.weatherCurnetModel);
          } else {
            return const Center(
              child: Text(
                "Try again",
                style: TextStyle(fontSize: 30),
              ),
            );
          }
        },
      ),
    );
  }
}
