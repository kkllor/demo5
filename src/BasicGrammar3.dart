mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waing hands');
    } else {
      print('Humming to self');
    }
  }
}

class Maestro with Musical {
  void _test() {}

  void test() {}
}

void main() {
  var maestro = Maestro();
  maestro._test();
  maestro.entertainMe();
}

//耐心>选择>努力
