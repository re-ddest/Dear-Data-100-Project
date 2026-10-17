// At first im gonna start with the simplest idea and then build on it
// Im going to make a class which makes a circle displaying the quantity of the data
// using map 

String[] lines;
Circles test;

void setup() {
  size(400, 400);

  lines = loadStrings("DearData.txt");
  printArray(lines);

  test = new Circles(100, color(20));
}

void draw() {
  background(30);
  test.make();
} 
