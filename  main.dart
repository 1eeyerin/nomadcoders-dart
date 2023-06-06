class Player {
  final String name;
  int xp, age;
  String team;

  // constructor: 전달된 값 초기화
  // named constructor parameter
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHello() {
    print('hi my name is $name, my xp ${xp + 1}');
  }
}

void main() {
  var player = Player(
    name: 'yerin',
    xp: 1500,
    team: 'blue',
    age: 21,
  );
  player.sayHello();
}
