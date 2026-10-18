// Initialise a flower randomly placed in the grass area

class Flower {

  float StemSize;
  color colorOf;
  float x;
  float y;
  
  Flower (float messages, color colorOf) {
  
    this.StemSize = map(messages, 0, 200, 10, 100);
    this.colorOf = colorOf;
    this.x = random(0, width);
    this.y = random(height/1.4, height);
  
  }
  
  void make() {
    // stem creation
    stroke(0, 100, 0);
    strokeWeight(5);
    line(x, y, x, y - StemSize);
  }

}
