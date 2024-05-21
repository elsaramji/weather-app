import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetherapping/Cubit/cubits/future_weather_cubit.dart';

import 'package:wetherapping/Model/weather_futuer_model.dart';
import 'package:wetherapping/Services/requset.dart';

class MoreinfoContant extends StatelessWidget {
  MoreinfoContant({super.key});

  @override
  Widget build(BuildContext context) {
    List<WeatherFutuerModle> modles =
        BlocProvider.of<WeatherFutuerCubit>(context).modles;
    return ListView.builder(
        itemCount: modles.length,
        itemBuilder: (context, index) {
          return futuerwethetwidget(
            futuerModle: modles[index],
          );
        });
  }
}

class futuerwethetwidget extends StatelessWidget {
  const futuerwethetwidget({
    super.key,
    required this.futuerModle,
  });

  final WeatherFutuerModle futuerModle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25, bottom: 5, left: 10, right: 10),
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.5),
        color: const Color(0xff202B3B),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network(
            futuerModle.weatherIcon,
            width: 60,
            height: 60,
            fit: BoxFit.fill,
          ),
          Text("↓${futuerModle.minTemp} | ↑${futuerModle.maxTemp} °C",
              style:  GoogleFonts.cairo(fontSize: 16)),
          Text("📅${futuerModle.datetime}",
              style:  GoogleFonts.cairo(fontSize: 14)),
        ],
      ),
    );
  }
}
