abstract class Insect {
  void crawl() {
    print('crawling');
  }
}

abstract class AirbroneInsect extends Insect {
  void buzz() {
    print('buzzing anoyingly');
  }
}

mixin fluttering {
  void flutter() {
    print('fluttering');
  }

  void fly() {
    print('Fly');
  }
}

abstract class Bird with fluttering {
  void chirp() {
    print('chirp chirp');
  }
}

class swallow extends Bird {
  void doSwallow() {
    flutter();
    fly();
    chirp();
    print('eating Mosquito by bird');
  }
}

class Mosquito extends AirbroneInsect with fluttering {
  void doMosquitoTing() {
    crawl();
    flutter();
    buzz();
    print('sucking blood');
  }
}

void main(List<String> args) {
  var ss = Mosquito();
  ss.doMosquitoTing();
  var birds = swallow();
  birds.doSwallow();
}
