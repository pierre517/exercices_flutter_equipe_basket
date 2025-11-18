import 'package:flutter/material.dart';
import 'package:introduction/container.dart';

class Exo3 extends StatelessWidget {
  const Exo3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('bonjour')),
        backgroundColor: const Color.fromARGB(255, 193, 240, 105),
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
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('au revoir', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushNamed(context, '/page3');
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
      body: Column(
        children: [
          SizedBox(height: 15),
          Expanded(
            child: Row(
              children: [
                SizedBox(width: 15),
                MyWidget(
                  color: Colors.lightBlueAccent,
                  flex: 1,
                  text: 'tiroir',
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: Row(
              children: [
                SizedBox(width: 15),
                MyWidget(
                  color: const Color.fromARGB(255, 143, 174, 189),
                  flex: 1,
                  text: 'wahid',
                ),
                SizedBox(width: 15),
                MyWidget(
                  color: const Color.fromARGB(255, 39, 61, 71),
                  flex: 1,
                  text: 'pierre',
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Container(
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('retour'),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: Row(
              children: [
                SizedBox(width: 15),
                MyWidget(
                  color: const Color.fromARGB(255, 134, 122, 179),
                  flex: 2,
                  text: 'oui',
                ),
                SizedBox(width: 15),
                MyWidget(
                  color: const Color.fromARGB(255, 70, 111, 129),
                  flex: 1,
                  text: 'no',
                ),
                SizedBox(width: 15),
              ],
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
