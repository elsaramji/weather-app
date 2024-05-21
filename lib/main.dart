import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapping/Cubit/cubits/curnet_weather_cubit.dart';
import 'package:wetherapping/Cubit/cubits/future_weather_cubit.dart';

import 'package:wetherapping/views/homeview.dart';
import 'package:wetherapping/widgets/Pacagepices/round_textfiled.dart';

void main(List<String> args) async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WeatherCurnetCubit>(
            create: (context) => WeatherCurnetCubit()),
        BlocProvider<WeatherFutuerCubit>(
            create: (context) => WeatherFutuerCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            typography: Typography.material2021(
              colorScheme: const ColorScheme.dark(),
              platform: TargetPlatform.android,
            ),
            colorScheme: const ColorScheme(
                brightness: Brightness.dark,
                primary: Colors.blue,
                onPrimary: Colors.blue,
                secondary: Colors.white,
                onSecondary: Colors.white,
                error: Colors.red,
                onError: Colors.red,
                background: Color(0xff0B131E),
                onBackground: Color(0xff0B131E),
                surface: Colors.white,
                onSurface: Colors.white)),
        home: const Homepage(),
      ),
    );
  }
}
