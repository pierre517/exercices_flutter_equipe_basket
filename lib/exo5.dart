import 'package:flutter/material.dart';

class Exo5 extends StatefulWidget {
  const Exo5({super.key});

  @override
  State<Exo5> createState() => _Exo5State();
}

class _Exo5State extends State<Exo5> {
  int teamA = 0;
  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Chink wo Sheeeh')),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 253, 186, 98),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 80),
            ListTile(
              title: const Text('TEAM A', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushNamed(context, '/teamA');
              },
            ),
            ListTile(
              title: const Text('TEAM B', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushNamed(context, '/teamB');
              },
            ),
            ListTile(
              title: const Text('Accueuil', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/teamA');
                          },
                          child: Text(
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                            'Team A',
                          ),
                        ),
                      ),
                      Divider(),
                      SizedBox(height: 50),
                      Text(
                        style: TextStyle(
                          fontSize: teamA >= 100 ? 110 : 150,
                          fontWeight: FontWeight.bold,
                        ),
                        '$teamA',
                      ),
                      SizedBox(height: teamA >= 100 ? 107 : 50),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 20,
                          ),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamA++;
                          });
                        },
                        child: Text('Add 1 point'),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 20,
                          ),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamA += 2;
                          });
                        },
                        child: Text('Add 2 point'),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 20,
                          ),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamA += 3;
                          });
                        },
                        child: Text('Add 3 point'),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/teamB');
                          },
                          child: Text(
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                            'Team B',
                          ),
                        ),
                      ),
                      Divider(),
                      SizedBox(height: 50),
                      Text(
                        style: TextStyle(
                          fontSize: teamB >= 100 ? 110 : 150,
                          fontWeight: FontWeight.bold,
                        ),
                        '$teamB',
                      ),
                      SizedBox(height: teamB >= 100 ? 107 : 50),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 20,
                          ),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamB++;
                          });
                        },
                        child: Text('Add 1 point'),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 20,
                          ),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamB += 2;
                          });
                        },
                        child: Text('Add 2 point'),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 20,
                          ),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamB += 3;
                          });
                        },
                        child: Text('Add 3 point'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 100,
                          vertical: 25,
                        ),
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamA = 0;
                          teamB = 0;
                        });
                      },
                      child: Text('Reset'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
