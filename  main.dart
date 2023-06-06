// QQ operator ?? ?=
String capitalizeName(String? name) {
  if (name != null) {
    return name.toUpperCase();
  }

  return 'ANON';
}

String capitalizeName1(String? name) =>
    name != null ? name.toUpperCase() : 'ANON';

String capitalizeName2(String? name) => name?.toUpperCase() ?? 'ANON';

void main() {
  print(capitalizeName('yr'));
  print(capitalizeName(null));

  String? name;
  //만약 name이 널이면 기본값 할당
  name ??= 'nico';
  name = null; // 널이여야 아래 변수에 할당할 수 있으니
  name ??= 'yr';
}
