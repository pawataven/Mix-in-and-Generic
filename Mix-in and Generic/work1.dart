class Pair<T, U> {
  T? first;
  U? second;

  Pair(this.first, this.second);

  void swap() {
    var sefirst = first;
    first = second as T?;
    second = sefirst as U;
  }

  void displayPair() {

    print('first ${first} second${second}');
  }
}

void main(List<String> args) {
  Pair<int, int> pair1 = Pair(45, 50);
  pair1.displayPair();
  pair1.swap();
  pair1.displayPair();

  Pair<double, double> pair2 = Pair(3.14, 42);
  pair2.displayPair();
  pair2.swap();
  pair2.displayPair();
}
