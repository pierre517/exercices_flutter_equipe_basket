import 'package:flutter/material.dart';

class Exo4 extends StatelessWidget {
  final List tableau = [
    {'name': "wahid", 'age': '33'},

    {'name': "Pierre", 'age': '56'},
  ];

  Exo4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: ListView.builder(
                itemCount: tableau.length,
                itemBuilder: (context, i) {
                  return Row(
                    children: [
                      Text(tableau[i]['name'] + ','),
                      SizedBox(width: 2),
                      Text(tableau[i]['age'] + ' ans'),
                    ],
                  );
                },
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('retour'),
            ),
          ),
          SizedBox(height: 80),
        ],
      ),
    );
  }
}
