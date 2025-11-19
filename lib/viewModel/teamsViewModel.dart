import 'package:introduction/model/players.dart';

class Teams {
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
}
