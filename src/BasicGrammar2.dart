import 'BasicGrammar.dart';
import 'BasicGrammar1.dart';

class Point {
  double? x;
  double? y;
  double z = 0;

  Point(this.x, this.y);

  Point.fromJson(Map<String, double> json)
      : x = json['x']!,
        y = json['y']! {
    print('In Point.fromJson(): ($x,$y)');
  }

  Point.withAssert(this.x, this.y) : assert(x! >= 0) {}

  @override
  String toString() {
    return 'Point{x: $x, y: $y, z: $z}';
  }
}

class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);
  final double x, y;

  const ImmutablePoint(this.x, this.y);
}

main() {
  final point = Point.fromJson({'x': 2.12, 'y': 34.23});
  print(point);
  final point1 = Point(23.12, 53.212);
  print(point1);
  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }

  List<Color> colors = Color.values;
  colors.forEach((element) {
    print('${element.index} ${element.runtimeType}');
  });
}

class ProfileMark {
  final String name;
  int? age;
  final DateTime start = DateTime.now();

  ProfileMark(this.name);

  ProfileMark.unnamed() : name = '';

  ProfileMark.namedKkllor()
      : name = 'kkllor',
        age = 12;
}

misbehave() {
  try {
    dynamic foo = true;
    print(foo++);
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow;
  }
}

enum Color { red, green, blue }
