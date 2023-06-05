void main() {
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, //collection if : giveMeFive가 true일 경우 List에 5를 추가함
  ];

  print(numbers);

  //String interpolation : text에 변수를 추가하는 방법
  var name = 'yr';
  var age = 10;
  var greeting = "Hello everyone, my name is $name, and i'm ${age + 2}";
  print(greeting);

  //collection for
  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "❤️‍🔥 $friend",
  ];

  print(newFriends);
}
