void main() {
  //Map: js or ts === object
  var player = {
    'name': 'nico',
    'xp': 19.99,
    'superpower': false,
  };

  Map<int, bool> player2 = {
    1: true,
    2: false,
    3: false,
  };

  Map<List<int>, bool> player3 = {
    [3, 234, 3]: true,
  };

  List<Map<String, Object>> player4 = [
    {
      'sdsd': false,
      'sdds': [234, 234, 23423]
    },
    {
      'sdsd': false,
      'sdds': [234, 234, 23423]
    },
  ];
}
