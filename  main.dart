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

/**
 * 새로운 메서드 만듬
 */
  Player.createBluePlayer({
    required String name,
    required int age,
  })  : // : player class 초기화
        this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  Player.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print('hi my name is $name, age $age, team $team, xp ${xp + 1}');
  }
}

void main() {
  var bluePlayer = Player.createBluePlayer(
    name: 'yerin-blue',
    age: 21,
  );
  var redPlayer = Player.createRedPlayer(
    'yerin-red',
    21,
  );

  bluePlayer.sayHello();
  redPlayer.sayHello();
}
