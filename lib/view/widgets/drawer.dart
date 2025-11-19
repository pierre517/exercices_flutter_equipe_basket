import 'package:flutter/material.dart';
import 'package:introduction/view/teams.dart';
import 'package:introduction/viewModel/teamsViewModel.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 253, 186, 98),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(height: 80),
          ListTile(
            title: const Text('TEAM A', style: TextStyle(fontSize: 20)),
            onTap: () async {
              final myTeamA = await TeamsVm.teamA();
              if (!context.mounted) return;
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
              if (!context.mounted) return;
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
    );
  }
}
