import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:wetherapping/widgets/Pacagepices/barunderbage.dart';
import 'package:wetherapping/widgets/Pacagepices/round_textfiled.dart';
import 'package:wetherapping/widgets/egypt_gride.dart';

class Selectecity extends StatelessWidget {
  const Selectecity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const UnderBar(),
        body: SafeArea(
          child: Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 12.5, vertical: 12.5),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Expanded(flex: 1, child: RoundUserGeter()),
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
                  child: EgyptGride(),
                ),
              ],
            ),
          ),
        ));
  }
}
