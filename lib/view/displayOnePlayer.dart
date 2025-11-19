import 'package:flutter/material.dart';
import 'package:introduction/model/players.dart';

class OnePlayer extends StatelessWidget {
  final Players player;
  const OnePlayer({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 450,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orangeAccent,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(
                        255,
                        104,
                        104,
                        104,
                      ).withValues(),
                      blurRadius: 5,
                      spreadRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Icon(Icons.sports_basketball, size: 100),
                    SizedBox(height: 60),
                    Center(
                      child: Text(
                        style: TextStyle(fontSize: 28),
                        '${player.nom} ${player.prenom},\n ${player.age} ans,\n numero ${player.id},\n taille: ${player.taille} cm ',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(
                      255,
                      104,
                      104,
                      104,
                    ).withValues(),
                    blurRadius: 5,
                    spreadRadius: 2,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(style: TextStyle(fontSize: 20), 'retour'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
