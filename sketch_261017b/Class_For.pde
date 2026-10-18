// Initialise a flower randomly placed in the grass area

class Flower {

  float StemSize;
  String colorOf;
  float x;
  float y;
  
  Flower (float messages, String colorOf) {
  
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
    noStroke();
  //a switch case for each persons color to represent them!
  switch(colorOf) {
      case "White":
        fill(255);
        println("White assigned");
        break;
    
      case "Blue":
        fill(0, 0, 255);
        println("Blue assigned");
        break;
    
      case "Pink":
        fill(255, 152, 199);
        println("Pink assigned");
        break;
    
      case "Brown":
        fill(30, 2, 4);
        println("Brown assigned");
        break;
    
      case "Green":
        fill(0, 255, 0);
        println("Green assigned");
        break;
    
      case "Yellow":
        fill(255, 255, 0);
        println("Yellow assigned");
        break;
    
      case "Orange":
        fill(252, 97, 1);
        println("Orange assigned");
        break;
    }
    circle(x, y-StemSize, 35);
    fill(230,230, 0);
    circle(x, y-StemSize, 20);
  }

}
