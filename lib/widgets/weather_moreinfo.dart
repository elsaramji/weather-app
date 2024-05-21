import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapping/Cubit/cubits/future_weather_cubit.dart';
import 'package:wetherapping/widgets/moreinfobliud.dart';

class MoreinfoWidget extends StatelessWidget {
  const MoreinfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      margin: const EdgeInsets.symmetric(horizontal: 12.5, vertical: 22.5),
      width: double.infinity,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(25),
      ),
      child: MoreinfoContant(),
    );
  }
}
