/** 
 * typedef
 * 자료형이 헷갈릴때 도움이 되는 alias
 * 자료형에 alias를 붙일 수 있게 함
*/

typedef ListOfInts = List<int>;
typedef UserInfo = Map<String, String>;

//숫자 배열을 반환하는 함수(파라미터값도 숫자배열로 들어온다)
List<int> reverseListOfNumbers(List<int> list) {
  var reversed = list.reversed;
  //List를 리버스하면 리스트랑은 조금 다른 iterable이 되어서 다시 list로 변환해주어야함
  return reversed.toList();
}

//숫자 배열을 반환하는 함수(파라미터값도 숫자배열로 들어온다)
ListOfInts reverseListOfNumbers1(ListOfInts list) {
  var reversed = list.reversed;
  //List를 리버스하면 리스트랑은 조금 다른 iterable이 되어서 다시 list로 변환해주어야함
  return reversed.toList();
}

// 구조화된 data의 형태를 지정하고 싶다면 class를 사용해야 한다
String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {
  var reverse = reverseListOfNumbers1([1, 2, 3]);
  print(reverse);

  print(sayHi({"name": "nico"}));
}
