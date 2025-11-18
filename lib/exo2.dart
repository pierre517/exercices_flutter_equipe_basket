import 'package:flutter/material.dart';
import 'package:introduction/container.dart';

class Exo2 extends StatelessWidget {
  const Exo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('bonjour')),
        backgroundColor: Colors.greenAccent,
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 143, 136, 136),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 80),
            ListTile(
              title: const Text('bonjour', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushNamed(context, '/page2');
              },
            ),
            ListTile(
              title: const Text('au revoir', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('exo4', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushNamed(context, '/page4');
              },
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightGreen,
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
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/page2');
                  },
                  child: Text('tralala'),
                ),
              ),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 12),
                      MyWidget(
                        color: const Color.fromARGB(255, 116, 170, 144),
                        flex: 1,
                        text: 'oui',
                      ),
                      SizedBox(height: 12),
                      MyWidget(
                        color: const Color.fromARGB(255, 31, 113, 167),
                        flex: 1,
                        text: 'oui',
                      ),
                      SizedBox(height: 12),
                      MyWidget(
                        color: const Color.fromARGB(255, 64, 143, 105),
                        flex: 1,
                        text: 'oui',
                      ),
                      SizedBox(height: 12),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 12),
                      MyWidget(
                        color: const Color.fromARGB(255, 6, 70, 39),
                        flex: 1,
                        text: 'oui',
                      ),
                      SizedBox(height: 12),
                      MyWidget(
                        color: const Color.fromARGB(255, 178, 243, 212),
                        flex: 1,
                        text: 'oui',
                      ),
                      SizedBox(height: 12),
                      MyWidget(
                        color: const Color.fromARGB(255, 69, 71, 70),
                        flex: 1,
                        text: 'oui',
                      ),
                      SizedBox(height: 12),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 12),
                      MyWidget(color: Colors.greenAccent, flex: 1, text: 'oui'),
                      SizedBox(height: 12),
                      MyWidget(
                        color: const Color.fromARGB(255, 8, 102, 57),
                        flex: 1,
                        text: 'oui',
                      ),
                      SizedBox(height: 12),
                      MyWidget(
                        color: const Color.fromARGB(255, 127, 179, 154),
                        flex: 1,
                        text: 'oui',
                      ),
                      SizedBox(height: 12),
                    ],
                  ),
                ),
                SizedBox(width: 12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
