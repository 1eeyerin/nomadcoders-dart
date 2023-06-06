//void: 아무것도 리턴하지 않는 함수
void sayHello(String name) {
  print("Hello $name nice to meet you");
}

//string을 리턴하는 함수
String sayHello2(String name) {
  return "Hello $name nice to meet you";
}

// => fat arrow syntax
String sayHello3(String name) => "Hello $name nice to meet you";

num plus(num a, num b) => a + b;

// 파라미터 기본값
String sayHello4({
  String name = '',
  int age = 27,
  String country = 'korea',
}) {
  return "Hello $name, you re $age, and you come from $country";
}

// 파라미터 필수값
String sayHello5({
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name, you re $age, and you come from $country";
}

// 파라미터 옵션값
String sayHello6(String name, int age, [String? country = 'cuba']) {
  return "Hello $name, you re $age, and you come from $country";
}

void main() {
  print(sayHello6('yr', 27));
}
