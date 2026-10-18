
 // At first im gonna start with the simplest idea and then build on it
 // Im going to make a class which makes flowers and displays them day by day
 // The taller a flower, the more messages sent.

Table data;
int dayCount = 0;
ArrayList<String> dates = new ArrayList<String>();

void setup() {
  size(1000, 1000);

  // Load the CSV file (first row contains column names)
  data = loadTable("DearData.csv", "header");

  // Loop through every row in the CSV and add dates to the array list
  for (TableRow row : data.rows()) {

    String date = row.getString("Date");
    
    // give this arraylist all dates so we can scroll through in arraylist
    if (dates.contains(date)) {
      println("Already found this date:" + date);
    } else
    {
      dates.add(row.getString("Date"));
    }
    
    
    String person = row.getString("Person");
    int amount = row.getInt("Amount");

    println("Date: " + date);
    println("Person: " + person);
    println("Amount: " + amount);
    printArray(dates);
  }
}

void draw() {
  background(30);
}

void keyPressed(){

 if (key == CODED) 
 {
    // LOOP THROUGH THE ARRAYLIST OF DATES AND ENSURE THAT THE VALUES ARE WITHIN RANGE
    // ELSE DO NOTHING!
    if (keyCode == RIGHT && dayCount < dates.size() - 1) {
       dayCount++;
       println(dates.get(dayCount));
    } 
    else if (keyCode == LEFT && dayCount > 0)
    {
       dayCount--;
       println(dates.get(dayCount));
    }
 } 
  
}
