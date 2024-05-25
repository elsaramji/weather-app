import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapping/Cubit/cubits/future_weather_cubit.dart';
import 'package:wetherapping/views/selecetstateviwe.dart';
import '../Cubit/cubits/curnet_weather_cubit.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled({super.key});
  @override

  /// Builds a custom text field widget with a search icon, hint text, label text, and customized border styles.
  ///
  /// The text field is designed with a blue search icon, a hint text of "What's City Name", a label text of "Search City",
  /// and a filled background color of `0xff0B131E`. The enabled border has a light blue color and a radius of 12.5,
  /// while the focused border has a slightly thicker light blue border.
  ///
  /// When the user submits the text field, the [WeatherCurnetCubit] and [WeatherFutuerCubit] are used to fetch the current
  /// and future weather data for the entered city, and the user is navigated to the [SelecetStateViwe] screen.
  /// The [onChanged] callback is also provided, but not implemented in the given code.
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
            MaterialPageRoute(builder: (context) => const SelecetStateViwe()));
      },
      onChanged: (value) {},
    );
  }
}
