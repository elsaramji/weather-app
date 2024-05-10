import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wetherapping/widgets/Pacagepices/barunderbage.dart';
import 'package:wetherapping/widgets/Pacagepices/round_textfiled.dart';

class Selectecity extends StatelessWidget {
  const Selectecity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: UnderBar(),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12.5, vertical: 12.5),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(flex: 1, child: const RoundUserGeter()),
              Expanded(
                flex: 5,
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: Icon(Icons.location_on_outlined),
                        title: Text("Griga"),
                        subtitle: Text("Egypt"),
                        trailing: Icon(Icons.add),
                      );
                    },
                    itemCount: 10),
              ),
            ],
          ),
        ));
  }
}
