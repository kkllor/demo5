import 'dart:math' show Random;

void main() async {
  print('compute π using Monte Carlo Method.');
  await for (final estimate in computePi().take(100)) {
    print('π= $estimate');
  }
}

Stream<double> computePi({int batch = 100}) async* {
  var total = 0;
  var count = 0;
  while (true) {
    final points = generateRandom().take(batch);
    final inside = points.where((p) => p.isInsideUnitCircle);

    total += batch;
    count += inside.length;
    final ratio = count / total;
    yield ratio * 4;
  }
}

Iterable<Point> generateRandom([int? seed]) sync* {
  final random = Random(seed);
  while (true) {
    var x = random.nextDouble();
    var y = random.nextDouble();
    print('x = $x, y = $y');
    yield Point(x, y);
  }
}

class Point {
  const Point(this.x, this.y);

  final double x, y;

  bool get isInsideUnitCircle => x * x + y * y <= 1;
}
