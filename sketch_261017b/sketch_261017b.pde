
 // At first im gonna start with the simplest idea and then build on it
 // Im going to make a class which makes a circle displaying the quantity of the data
 // using map

Table data;
Circles test;

void setup() {
  size(400, 400);

  // Load the CSV file (first row contains column names)
  data = loadTable("DearData.csv", "header");

  // Loop through every row in the CSV
  for (TableRow row : data.rows()) {

    String date = row.getString("Date");
    String person = row.getString("Person");
    int amount = row.getInt("Amount");

    // Convert message count into circle diameter
    float diameter = map(amount, 0, 250, 10, 100);

    println("Date: " + date);
    println("Person: " + person);
    println("Amount: " + amount);
    println("Diameter: " + diameter);
  }
}

void draw() {
  background(30);
}
