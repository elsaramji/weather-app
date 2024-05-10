import 'package:flutter/material.dart';
import 'package:wetherapping/views/selectecity.dart';

class UnderBar extends StatelessWidget {
  const UnderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        height: 60,
        elevation: 1,
        shadowColor: const Color(0xff202B3B),
        color: const Color(0xff0B131E),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
              icon: const Icon(Icons.home),
              tooltip: 'Home',
              onPressed: () {
                Navigator.pop(context);
              }),
          IconButton(
              icon: const Icon(Icons.add),
              tooltip: 'Add City',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Selectecity()));
              }),
        ]));
  }
}
