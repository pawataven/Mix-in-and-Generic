abstract class Drawable {
  void draw();
}

class Circle implements Drawable {
  @override
  void draw() {
    print('Drawing a Circle..');
  }
}

class Squre implements Drawable {
  @override
  void draw() {
    print('Drawing Squre');
  }
}

void drawShape<T extends Drawable>(T c){
  c.draw();
}

void main(List<String> args) {
  drawShape(Circle());
  drawShape(Squre());
}
