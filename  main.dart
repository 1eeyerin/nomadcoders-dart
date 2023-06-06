class Player {
  final String name = 'nico';
  /**
   * final 
   * example) final String name = 'nico';
   * === js const
   * */

  /** 
   * late
   * example) late final String name = 'nico'; 
   * 초기 데이터 없이 선언 가능
   * */

  /** const 
   * example) const name = 'nico';
   * compile-time constant
   * */
  int xp = 1500;

  void sayHello() {
    /** 
     * this.name으로 가능하나, 
     * method내에서 같은 이름의 variable가 있어서 어쩔 수 없이 사용하는게 아니면
     * class method 내의 this는 사용하지 않는 것을 권고하고 있음 
     * */
    print('hi my name is $name');
  }
}

void main() {
  var player = Player();
  player.sayHello();
}
