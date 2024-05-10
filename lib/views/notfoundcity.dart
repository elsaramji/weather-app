import 'package:flutter/material.dart';
import 'package:wetherapping/widgets/Pacagepices/barunderbage.dart';

class NotfoundCityMassage extends StatelessWidget {
  const NotfoundCityMassage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline_outlined, size: 100, color: Colors.blue),
          SizedBox(height: 10),
          Text(
            "City Not Found",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 10),
          Text(
            "Please Enter a valid City Name",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
