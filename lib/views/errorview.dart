import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetherapping/widgets/bottomcontroler.dart';

class Errormassage extends StatelessWidget {
  final String message;
  const Errormassage({super.key, required this.message});

  @override

  /// Builds the error view widget, which is displayed when a city is not found or there is a network connection issue.
  ///
  /// The error view consists of an error icon, a title indicating that the city was not found, and a message explaining the issue.
  /// The view is centered on the screen and includes a bottom navigation bar.
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomControler(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline_outlined,
                size: 100, color: Colors.blue),
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
