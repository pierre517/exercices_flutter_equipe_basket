import 'package:flutter/material.dart';
import 'package:introduction/view/teamB.dart';
import 'package:introduction/viewModel/teamsViewModel.dart';

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
              onTap: () async {
                final myTeamA = await Teams.teamA();
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => TeamB(title: 'TEAM A', team: myTeamA),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('TEAM B', style: TextStyle(fontSize: 20)),
              onTap: () async {
                final myTeamB = await Teams.teamB();
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => TeamB(title: 'TEAM B', team: myTeamB),
                  ),
                );
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
                          onTap: () async {
                            final myTeamA = await Teams.teamA();

                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) =>
                                    TeamB(title: 'TEAM A', team: myTeamA),
                              ),
                            );
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
                      SizedBox(height: teamA >= 100 ? 107 : 40),
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
                      SizedBox(height: 20),
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
                      SizedBox(height: 20),
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
                          onTap: () async {
                            final myTeamB = await Teams.teamB();
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) =>
                                    TeamB(title: 'TEAM B', team: myTeamB),
                              ),
                            );
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
                      SizedBox(height: teamB >= 100 ? 107 : 40),
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
                      SizedBox(height: 20),
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
                      SizedBox(height: 20),
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
                          vertical: 22,
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
