import 'package:flutter/material.dart';
import 'package:introduction/exos_de_base/exo2.dart';
import 'package:introduction/exos_de_base/exo3.dart';
import 'package:introduction/exos_de_base/exo4.dart';
import 'package:introduction/view/exo5.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Exo5(), // becomes the route named '/'
      routes: <String, WidgetBuilder>{
        '/page2': (BuildContext context) => const Exo3(),
        '/page3': (BuildContext context) => const Exo2(),
        '/page4': (BuildContext context) => Exo4(),
        '/accueuil': (BuildContext context) => const Exo5(),
      },
    ),
  );
}
