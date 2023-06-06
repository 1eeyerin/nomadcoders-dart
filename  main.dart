// 추상화 클래스 (abstract class)로 객체를 생성할 수 없다
// 어떤 청사진을 가지고 있어야하는지 정의해줌
// 수많은 청사진에 메소드의 이름과 반환 타입만 정해서 정의 가능
abstract class Human {
  void walk();
}

enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

class Coach extends Human {
  void walk() {
    print('the coach is walking');
  }
}

class Player extends Human {
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

  void walk() {
    print('im walk');
  }

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
