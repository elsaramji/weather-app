import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetherapping/Cubit/cubits/curnet_weather_cubit.dart';
import 'package:wetherapping/Model/egyptGovernorates.dart';
import 'package:wetherapping/views/selecetstateviwe.dart';

import '../Cubit/cubits/future_weather_cubit.dart';

class Governorates extends StatelessWidget {
  const Governorates({super.key});

  @override

  /// Builds a grid of governorates in Egypt, where each governorate is represented as a clickable container.
  /// When a governorate is tapped, it fetches the current and future weather data for that governorate and navigates to the [SelecetStateViwe] screen.
  /// The grid is laid out with 2 columns, and each container displays the name of the governorate in a centered text.
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: EgyptGovernorates.egyptGovernorates.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () async {
              await BlocProvider.of<WeatherCurnetCubit>(context)
                  .getWeather(city: EgyptGovernorates.egyptGovernorates[index]);
              await BlocProvider.of<WeatherFutuerCubit>(context)
                  .getfutuerWeather(
                      cityName: EgyptGovernorates.egyptGovernorates[index]);
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const SelecetStateViwe()));
            },
            child: Container(
              margin: const EdgeInsets.all(12.5),
              height: 200,
              width: 100,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/weather.png",
                    ),
                    fit: BoxFit.contain),
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xff202B3B),
              ),
              child: Center(
                  child: Text(EgyptGovernorates.egyptGovernorates[index],
                      style: GoogleFonts.cairo(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w900))),
            ),
          );
        });
  }
}
