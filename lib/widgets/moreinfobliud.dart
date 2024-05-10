import 'package:flutter/material.dart';

class MoreinfoContant extends StatelessWidget {
  const MoreinfoContant({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/cloudy.png",
                  width: 25,
                  height: 25,
                  fit: BoxFit.fill,
                ),
                const Text("31 | 50 °C", style: TextStyle(fontSize: 16)),
                const Text("2024/01/01", style: TextStyle(fontSize: 12.5)),
              ],
            ),
          );
        });
  }
}
