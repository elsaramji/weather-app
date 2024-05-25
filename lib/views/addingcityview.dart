import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wetherapping/widgets/bottomcontroler.dart';
import 'package:wetherapping/widgets/customtextfiled.dart';
import 'package:wetherapping/widgets/governorates_egypt.dart';

class Addingcityview extends StatelessWidget {
  const Addingcityview({super.key});

  @override


    /// Builds the AddingCityView widget, which is a Scaffold with a BottomControler, a SafeArea containing a Column with a CustomTextFiled, a Text widget displaying "Egypt Governorates", and a Governorates widget.
  ///
  /// The AddingCityView is responsible for providing the user interface for adding a new city to the application.
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomControler(),
        body: SafeArea(
          child: Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 12.5, vertical: 12.5),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Expanded(flex: 1, child: CustomTextFiled()),
                Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: double.minPositive,
                      padding: const EdgeInsets.all(8.5),
                      child: Text(
                        "Egypt Governorates",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.cairo(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                const Expanded(
                  flex: 7,
                  child: Governorates(),
                ),
              ],
            ),
          ),
        ));
  }
}
