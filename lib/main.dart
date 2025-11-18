import 'package:flutter/material.dart';
import 'package:introduction/exo2.dart';
import 'package:introduction/exo3.dart';
import 'package:introduction/exo4.dart';
import 'package:introduction/exo5.dart';
import 'package:introduction/teamA.dart';
import 'package:introduction/teamB.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Exo5(), // becomes the route named '/'
      routes: <String, WidgetBuilder>{
        '/page2': (BuildContext context) => const Exo3(),
        '/page3': (BuildContext context) => const Exo2(),
        '/page4': (BuildContext context) => Exo4(),
        '/teamA': (BuildContext context) => const TeamA(),
        '/teamB': (BuildContext context) => const TeamB(),
        '/accueuil': (BuildContext context) => const Exo5(),
      },
    ),
  );
}
