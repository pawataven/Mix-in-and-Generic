class Box<T> {
  T? _value;

  void addValue(T v) {
    _value = v;
  }

  T? getValue() {
    return _value;
  }
}

class Shape {
  void draw() => print('Drawing Shape..');
}

class Circle {
  void draw() => print('Drawing Circle..');
}

void main(List<String> args) {
  var b1 = Box(); /* ไม่ได้จำกัดชนิดของข้อมูลทำให้รับข้อมูลเเบบชนิดใดก้ได้*/
  var b2 = Box<String>();
  var b3 = Box<double>();
  var b4 = Box<Shape>();
  var b5 = Box<Circle>();

  b1.addValue(20);
  b2.addValue("20");
  b3.addValue(30);
  b4.addValue(Shape());
  b5.addValue(Circle());

  print('b1 = ${b1.getValue()}');
  print('b2 = ${b2.getValue()}');
  print('b3 = ${b3.getValue()}');
  b1.addValue(Circle());
  b4.getValue()!.draw();
  b5.getValue()!.draw();
}