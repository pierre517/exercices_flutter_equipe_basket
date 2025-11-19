import 'package:flutter/material.dart';

import 'package:introduction/view/displayOnePlayer.dart';
import 'package:introduction/viewModel/teamsViewModel.dart';

class Teams extends StatefulWidget {
  final String title;
  final dynamic team;
  const Teams({super.key, required this.title, required this.team});

  @override
  State<Teams> createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
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
                final myTeamA = await TeamsVm.teamA();
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => Teams(title: 'TEAM A', team: myTeamA),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('TEAM B', style: TextStyle(fontSize: 20)),
              onTap: () async {
                final myTeamB = await TeamsVm.teamB();
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (context) => Teams(title: 'TEAM B', team: myTeamB),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Accueuil', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.pushNamed(context, '/accueuil');
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: widget.team.length,
        itemBuilder: (context, index) {
          final player = widget.team[index];
          return Column(
            children: [
              SizedBox(height: 10),
              Container(
                width: 350,
                padding: EdgeInsets.symmetric(vertical: 5),
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
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => OnePlayer(player: player),
                      ),
                    );
                    OnePlayer(player: player);
                  },
                  child: ListTile(
                    leading: Icon(Icons.sports_basketball_outlined),
                    title: Center(
                      child: Text(
                        '${player.prenom} ${player.nom}, numero ${player.id}',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          );
        },
      ),
    );
  }
}
