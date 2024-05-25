import 'package:flutter/material.dart';
import 'package:wetherapping/views/selecetstateviwe.dart';
import 'package:wetherapping/views/addingcityview.dart';

class BottomControler extends StatelessWidget {
  const BottomControler({super.key});

  @override

  /// Builds the bottom app bar for the application.
  ///
  /// The bottom app bar contains two IconButton widgets:
  /// - The first button navigates to the [SelecetStateViwe] screen when pressed.
  /// - The second button navigates to the [Addingcityview] screen when pressed.
  ///
  /// The bottom app bar has a height of 60, an elevation of 1, a shadow color of [0xff202B3B], and a background color of [0xff0B131E].
  Widget build(BuildContext context) {
    return BottomAppBar(
        height: 60,
        elevation: 1,
        shadowColor: const Color(0xff202B3B),
        color: const Color(0xff0B131E),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
              icon: Icon(Icons.home),
              tooltip: 'Home',
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const SelecetStateViwe()));
              }),
          IconButton(
              icon: const Icon(Icons.add),
              tooltip: 'Add City',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Addingcityview()));
              }),
        ]));
  }
}
