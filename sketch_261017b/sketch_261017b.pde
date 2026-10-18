
 // At first im gonna start with the simplest idea and then build on it
 // Im going to make a class which makes flowers and displays them day by day
 // The taller a flower, the more messages sent.

Table data;
int dayCount = 0;
String dayIndex;
ArrayList<String> dates = new ArrayList<String>();
ArrayList<Flower> flowers = new ArrayList<Flower>();

void setup() {
  size(800, 800);

  // load the CSV file
  data = loadTable("DearData.csv", "header");

  // loop through every row in the CSV and add dates to the array list
  for (TableRow row : data.rows()) {

    String date = row.getString("Date");
    
    // give this arraylist all dates so we can scroll left and right in keyPressed
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

void keyPressed(){

 if (key == CODED) 
 {
    // LOOP THROUGH THE ARRAYLIST OF DATES AND ENSURE THAT THE VALUES ARE WITHIN RANGE
    // THEN FIND THE VALUES THAT ARE WITHIN THIS DATE
    // ELSE DO NOTHING!
    if (keyCode == RIGHT && dayCount < dates.size() - 1) {
       dayCount++;
       dayIndex = dates.get(dayCount);
       println(dayIndex);
       Iterable<TableRow> dailyData = data.findRows(dayIndex, "Date");
       for (TableRow row : dailyData) 
       {
          println(row.getString("Person"));
          println(row.getInt("Amount"));
       }
    } 
    else if (keyCode == LEFT && dayCount > 0)
    {
       dayCount--;
       dayIndex = dates.get(dayCount);
       println(dayIndex);
       Iterable<TableRow> dailyData = data.findRows(dayIndex, "Date");
       
       for (TableRow row : dailyData) 
       {
          println(row.getString("Person"));
          println(row.getInt("Amount"));
       }
       
    }
 } 
  
}

void draw() {
  background(0,170,255);
  noStroke();
  // create the grass
  fill(0,193,0);
  rect(0, height/1.4, width, height/2);
  // initialise test
}
