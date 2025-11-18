import 'package:flutter/material.dart';
import 'package:introduction/players.dart';

class TeamA extends StatefulWidget {
  const TeamA({super.key});

  @override
  State<TeamA> createState() => _TeamAState();
}

class _TeamAState extends State<TeamA> {
  late Future<List<Players>> futurePlayers;

  @override
  void initState() {
    super.initState();
    futurePlayers = PLayersRepo.getAllPlayers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('TEAM A')),
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
                Navigator.pop(context);
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
                Navigator.pushNamed(context, '/accueuil');
              },
            ),
          ],
        ),
      ),
      body: FutureBuilder<List<Players>>(
        future: futurePlayers,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Erreur: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final allPlayers = snapshot.data!;
            final players = allPlayers
                .where((player) => player.age >= 18 && player.age <= 34)
                .take(10)
                .toList();

            return ListView.builder(
              itemCount: players.length,
              itemBuilder: (context, index) {
                final player = players[index];
                return Column(
                  children: [
                    SizedBox(height: 10),
                    Container(
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
                      child: ListTile(
                        title: Center(
                          child: Text(
                            '${player.prenom} ${player.nom}, numero: ${player.id}',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                );
              },
            );
          } else {
            return const Center(child: Text('Aucun joueur trouvé'));
          }
        },
      ),
    );
  }
}
