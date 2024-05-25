import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapping/Cubit/cubits/curnet_weather_cubit.dart';
import 'package:wetherapping/Cubit/cubits/future_weather_cubit.dart';
import 'package:wetherapping/views/selecetstateviwe.dart';

/// The entry point of the application.
///
/// This function is called when the app is launched. It runs the [App] widget,
/// which is the root of the app's widget tree.
void main(List<String> args) async {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override

  /// * Builds the main application widget, which sets up the app's theme, color scheme, and typography,
  /// * and provides the necessary BLoC providers for the weather-related functionality.
  ///
  /// ! The `MultiBlocProvider` widget is used to create and provide the `WeatherCurnetCubit` and `WeatherFutuerCubit`
  /// instances to the app's widget tree. These BLoCs are responsible for managing the state of the current and future
  /// weather data, respectively.
  ///
  /// The `MaterialApp` widget is then created with the provided theme and color scheme, and the `SelecetStateViwe`
  /// widget is set as the app's home page.
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
            scaffoldBackgroundColor: const Color(0xff0B131E),
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
                surface: Colors.white,
                onSurface: Colors.white)),
        home: const SelecetStateViwe(),
      ),
    );
  }
}
