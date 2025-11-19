import 'dart:convert';

import 'package:http/http.dart' as http;

class Players {
  const Players({
    required this.nom,
    required this.prenom,
    required this.age,
    required this.id,
    required this.taille,
  });

  final int id;
  final String nom;
  final String prenom;
  final int age;
  final double taille;
}

class PLayersRepo {
  // ----------------------------------------------------//

  static Future<List<Players>> getAllPlayers() async {
    final List<Players> players = [];

    final Uri endpoint = Uri.parse('https://dummyjson.com/users');

    final response = await http.get(endpoint);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      for (var player in data["users"]) {
        players.add(
          Players(
            nom: player['lastName'],
            prenom: player['firstName'],
            age: player['age'],
            id: player['id'],
            taille: player['height'],
          ),
        );
      }
    } else {
      print("erreur serveur");
    }
    return players;
  }
}
