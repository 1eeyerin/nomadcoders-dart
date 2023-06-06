class Player {
  final String name;
  int xp, age;
  String team;

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        age = playerJson['age'],
        team = playerJson['team'];

  void sayHello() {
    print('hi my name is $name, age $age, team $team, xp ${xp + 1}');
  }
}

void main() {
  var apiData = [
    {"name": "nico1", "team": "red", "xp": 0, "age": 27},
    {"name": "nico2", "team": "red", "xp": 0, "age": 26},
    {"name": "nico3", "team": "red", "xp": 0, "age": 22},
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
