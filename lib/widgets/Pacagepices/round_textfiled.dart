import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Cubit/cubits/curnet_weather_cubit.dart';

class RoundUserGeter extends StatelessWidget {
  const RoundUserGeter({super.key});

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
      onSubmitted: (value) {
        BlocProvider.of<WeatherCurnetCubit>(context).getWeather(city: value);
        Navigator.pop(context);
      },
      onChanged: (value) {},
    );
  }
}
