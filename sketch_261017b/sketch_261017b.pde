// At first im gonna start with the simplest idea and then build on it
// Im going to make a class which makes a circle displaying the quantity of the data
// using map 
// Also need to figure out how to split dates and data

String[] lines;
String[] lines2;
Circles test;

void setup() {
  size(400, 400);

  lines = loadStrings("DearData.txt");
  printArray(lines);

  // test = new Circles(100, color(20));
  
  for (int i = 0; i < lines.length; i++) {
    
    if (lines[i].endsWith(":")) {
     
      lines2 = split(lines[i], ",");
    
    }
    printArray(lines2);
  
  }
  
}

void draw() {
  background(30);
} 
