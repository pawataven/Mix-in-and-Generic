abstract class MyShape {
  draw();
}

class Shape extends MyShape {
  void draw() => print('Drawing Shape');
}

class Circle extends Shape {
  void draw() => print('Drawing Circle');
}

class Box<T extends MyShape> {
  T? value;

  Box(this.value);

  void drawShape() => value!.draw();
}

void main(List<String> args) {
  var bCircle = Box<Circle>(Circle());
  var bMyShape = Box<Shape>(Shape());
  var bShape = Box<Shape>(Shape());

  bCircle.drawShape();
  bMyShape.drawShape();
  bShape.drawShape();
}
