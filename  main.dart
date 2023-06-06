/**
 *  
 * class Player {
 * late final String name;
 * late int xp; 
 * constructor method의 이름은 class 이름과 같아야함
 * Player(String name, int xp) {
 *   this.name = name;
 *  this.xp = xp;
 * }
 * 
 * void sayHello() {
 *   print('hi my name is $name, my xp ${xp + 1}');
 * }
 * }
*/

class Player {
  final String name;
  int xp;

  // constructor: 전달된 값 초기화
  Player(this.name, this.xp);

  void sayHello() {
    print('hi my name is $name, my xp ${xp + 1}');
  }
}

void main() {
  var player = Player('yerin', 1500);
  var player2 = Player('yerin1', 100);
  player.sayHello();
  player2.sayHello();
}
