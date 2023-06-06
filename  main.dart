class Player {
  String name;
  int xp, age;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.age,
    required this.team,
  });

  void sayHello() {
    print('hi my name is $name, age $age, team $team, xp ${xp + 1}');
  }
}

void main() {
  // 값을 수정할때 1..
  var nico = Player(name: "nico", xp: 1200, age: 22, team: 'red')
    ..name = 'lala' // nico.name 하는 것과 같음 ;;
    ..xp = 120000
    ..team = 'blue';

  // 값을 수정할때 2..
  var potato = nico
    ..name = 'lala' // nico.name 하는 것과 같음 ;;
    ..xp = 120000
    ..team = 'blue'
    ..sayHello();
}
