import 'package:flutter/material.dart';

class Wahid extends StatelessWidget {
  const Wahid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(66, 138, 136, 136),
      appBar: AppBar(
        title: Center(child: Text('bonjour')),
        backgroundColor: const Color.fromARGB(255, 187, 230, 250),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              height: 200,
              width: 400,
              color: Colors.blueGrey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 200,
                    color: Colors.cyanAccent,
                    child: Center(child: Text('bouffon')),
                  ),
                  Container(
                    height: 150,
                    width: 20,
                    color: const Color.fromARGB(255, 151, 231, 231),
                  ),
                  Container(
                    height: 150,
                    width: 20,
                    color: const Color.fromARGB(255, 225, 230, 230),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 200,
              width: 400,
              color: const Color.fromARGB(255, 121, 188, 221),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 200,
                    color: Colors.cyanAccent,
                    child: Center(child: Text('bouffon')),
                  ),
                  Container(
                    height: 150,
                    width: 20,
                    color: const Color.fromARGB(255, 151, 231, 231),
                  ),
                  Container(
                    height: 150,
                    width: 20,
                    color: const Color.fromARGB(255, 225, 230, 230),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            Container(
              height: 200,
              width: 400,
              color: const Color.fromARGB(255, 7, 91, 133),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: 250,
                    color: Colors.blue.shade100,
                    child: Center(
                      child: Text(
                        'Valentin groCave',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
