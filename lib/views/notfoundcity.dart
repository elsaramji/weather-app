import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetherapping/widgets/Pacagepices/barunderbage.dart';

class NotfoundCityMassage extends StatelessWidget {
  final String message;
  const NotfoundCityMassage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const UnderBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline_outlined, size: 100, color: Colors.blue),
            const SizedBox(height: 10),
            Text(
              "City Not Found ⚠️",
              style: GoogleFonts.cairo(fontSize: 30),
            ),
            const SizedBox(height: 10),
            Text(
              "Check  your city name 🌆 and network connection 📶 ",
              style: GoogleFonts.cairo(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
