class Box<T extends num> {
  T? value;

  Box(this.value);

  void showValue() {
    print('value is ${value}');
  }
}

void main(List<String> args) {
  var b1 = Box<int>(20);
  b1.showValue();
  b1.value = b1.value! * 10;
  b1.showValue();
}
