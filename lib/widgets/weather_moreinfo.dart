import 'package:flutter/material.dart';
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
        color: const Color(0xff202B3B),
        borderRadius: BorderRadius.circular(25),
      ),
      child: const MoreinfoContant(),
    );
  }
}
