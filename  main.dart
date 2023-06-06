class Human {
  final String name;
  Human({required this.name});

  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { blue, red }

class Player extends Human {
  final Team team;

  // 데이터를 받은 후 team은 현재 클래스에 정의해주고, name은 super 클래스에 전달함 (부모 클래스에 전달함)
  Player({
    required this.team,
    required String name, // Human으로 전달
  }) : super(name: name); //: super(name); 이런 방식으로 바로 건네줘도 무방
  /** 
   * name을 super 생성자에 전달
   * super 라는 키워드를 통해 (확장을 한) 부모 클래스와 상호작용할 수 있게 해줌
  */

  // human에서 온 sayHello를 직접 만든 메소드로 override함
  @override
  void sayHello() {
    // 상속한 부모 클래스의 프로퍼티에 접근하게 하거나, 메소드를 호출할 수 있게 함
    super.sayHello();
    print('and i play for ${team}');
  }
}

class Coach {}

void main() {
  // player 생성자 함수에 있는 name을 human으로 전달해주고 있음
  var player = Player(team: Team.red, name: 'nico');

  player.sayHello();
}
