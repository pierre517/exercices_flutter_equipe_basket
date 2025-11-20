import 'package:flutter/material.dart';
import 'package:introduction/model/players.dart';

class TeamsVm extends ChangeNotifier {
  int scoreTeamA = 0;
  int scoreTeamB = 0;

  static teamA() async {
    var allPlayers = await PLayersRepo.getAllPlayers();

    var team = allPlayers
        .where((player) => player.age >= 18 && player.age <= 34)
        .take(10)
        .toList();

    return team;
  }

  static teamB() async {
    var allPlayers = await PLayersRepo.getAllPlayers();

    var team = allPlayers
        .where((player) => player.age >= 35 && player.age <= 45)
        .take(10)
        .toList();
    return team;
  }

  addPoint(int point, team) {
    if (team == 'A') {
      scoreTeamA += point;
    }
    if (team == 'B') {
      scoreTeamB += point;
    }
    notifyListeners();
  }

  resetScore() {
    scoreTeamA = 0;
    scoreTeamB = 0;
    notifyListeners();
  }
}
