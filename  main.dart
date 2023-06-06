// text 형태 "red"로 쓸 필요 없다
// enum:고정된 상수 값들의 집합, 특정 변수에 대한 값들을 정해놓는다
enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

class Player {
  String name;
  XPLevel xp;
  int age;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.age,
    required this.team,
  });

  void sayHello() {
    print('hi my name is $name, age $age, team $team, xp $xp');
  }
}

void main() {
  // 값을 수정할때 1..
  var nico = Player(name: "nico", xp: XPLevel.pro, age: 22, team: Team.red)
    ..name = 'lala' // nico.name 하는 것과 같음 ;;
    ..xp = XPLevel.beginner
    ..team = Team.blue;

  // 값을 수정할때 2..
  var potato = nico
    ..name = 'lala' // nico.name 하는 것과 같음 ;;
    ..xp = XPLevel.medium
    ..team = Team.red
    ..sayHello();
}
