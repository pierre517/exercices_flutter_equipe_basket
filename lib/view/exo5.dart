import 'package:flutter/material.dart';
import 'package:introduction/view/teams.dart';
import 'package:introduction/view/widgets/drawer.dart';
import 'package:introduction/viewModel/teamsViewModel.dart';
import 'package:provider/provider.dart';

class Exo5 extends StatefulWidget {
  const Exo5({super.key});

  @override
  State<Exo5> createState() => _Exo5State();
}

class _Exo5State extends State<Exo5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Chink wo Sheeeh')),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: MyDrawer(),
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
                            final myTeamA = await TeamsVm.teamA();
                            if (!context.mounted) return;

                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) =>
                                    Teams(title: 'TEAM A', team: myTeamA),
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
                      SizedBox(height: 20),
                      Consumer<TeamsVm>(
                        builder: (context, value, child) => Text(
                          style: TextStyle(
                            fontSize: value.scoreTeamA >= 100 ? 110 : 150,
                            fontWeight: FontWeight.bold,
                          ),
                          value.scoreTeamA.toString(),
                        ),
                      ),
                      SizedBox(
                        height: context.watch<TeamsVm>().scoreTeamA >= 100
                            ? 107
                            : 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 20,
                          ),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          context.read<TeamsVm>().addPoint(1, 'A');
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
                          context.read<TeamsVm>().addPoint(2, 'A');
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
                          context.read<TeamsVm>().addPoint(3, 'A');
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
                            final myTeamB = await TeamsVm.teamB();
                            if (!context.mounted) return;
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (context) =>
                                    Teams(title: 'TEAM B', team: myTeamB),
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
                      SizedBox(height: 20),
                      Consumer<TeamsVm>(
                        builder: (context, value, child) => Text(
                          style: TextStyle(
                            fontSize: value.scoreTeamB >= 100 ? 110 : 150,
                            fontWeight: FontWeight.bold,
                          ),
                          value.scoreTeamB.toString(),
                        ),
                      ),
                      SizedBox(
                        height: context.watch<TeamsVm>().scoreTeamB >= 100
                            ? 107
                            : 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 20,
                          ),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          context.read<TeamsVm>().addPoint(1, 'B');
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
                          context.read<TeamsVm>().addPoint(2, 'B');
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
                          context.read<TeamsVm>().addPoint(3, 'B');
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
                        context.read<TeamsVm>().resetScore();
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
