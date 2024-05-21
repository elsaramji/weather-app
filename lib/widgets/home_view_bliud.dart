import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapping/Cubit/cubits/curnet_weather_cubit.dart';
import 'package:wetherapping/widgets/Pacagepices/barunderbage.dart';

import 'weather_cityinfo.dart';
import 'weather_digetal_screen.dart';
import 'weather_moreinfo.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const UnderBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WeatherWidget(
              weatherCurnetModel:
                  BlocProvider.of<WeatherCurnetCubit>(context).model,
            ),
            CityinfoWidget(
              weatherCurnetModel:
                  BlocProvider.of<WeatherCurnetCubit>(context).model,
            ),
            const MoreinfoWidget(),
          ],
        ),
      ),
    );
  }
}
