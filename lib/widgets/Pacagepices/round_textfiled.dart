import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapping/Cubit/cubits/future_weather_cubit.dart';
import 'package:wetherapping/Services/requset.dart';
import 'package:wetherapping/views/homeview.dart';
import '../../Cubit/cubits/curnet_weather_cubit.dart';

class RoundUserGeter extends StatelessWidget {
  RoundUserGeter({super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.search,
          color: Colors.blue,
        ),
        hintText: "What's City Name",
        labelText: "Search City",
        filled: true,
        fillColor: const Color(0xff0B131E),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.5),
          borderSide: const BorderSide(color: Colors.lightBlue, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.5),
          borderSide: const BorderSide(color: Colors.lightBlue, width: 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.5),
          borderSide: const BorderSide(color: Colors.lightBlue, width: 0),
        ),
      ),
      onSubmitted: (value) async {
        await BlocProvider.of<WeatherCurnetCubit>(context)
            .getWeather(city: value);
        await BlocProvider.of<WeatherFutuerCubit>(context)
            .getfutuerWeather(cityName: value);
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Homepage()));
      },
      onChanged: (value) {},
    );
  }
}
