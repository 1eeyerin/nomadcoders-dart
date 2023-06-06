//mixin : 생성자가 없는 클래스
//클래스에 프로퍼티들을 추가할때 사용

// 생성자를 가지고 있지 않음
mixin Strong {
  final double strengthLevel = 1500.99;
}

mixin QuickRunner {
  void runQuick() {
    print('runnnnnnn');
  }
}

mixin Tall {
  final double height = 1.99;
}

enum Team { blue, red }

// 다른 클래스의 프로퍼티와 메소드를 긁어다오기
// 상속 받을 필요가 없음
// Mixin => 재사용의 의미
class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  });
}

void main() {
  var player = Player(
    team: Team.red,
  );

  player.runQuick();
}


/**
 * extend: 확장한 클래스는 부모 클래스가 되고, 자식 클래스는 부모 클래스를 super를 통해서 접근할 수 있고 그 순간 부모 클래스의 인스턴스가 됨
 * mixin: 생성자가 없는 클래스. with라는 키워드를 사용해서, 단순히 Mixin 내부의 프로퍼티와 메소드를 가져오는 것 뿐. 부모 클래스가 되거나 하지는 않음
 */