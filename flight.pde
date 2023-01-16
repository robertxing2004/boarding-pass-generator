class Flight {
  // fields
  String airline;
  int flightNum;
  String origin;
  String destination;
  String time;
  String time2;
  String date;
  String gate;
  ArrayList<Passenger> passengers;
  int load;
  Pass[] passes;

  // constructor
  Flight(String a, int f, String dest, String depTime, String boardTime, String g, String date) {
    this.airline = a;
    this.flightNum = f;
    this.origin = "YYZ TORONTO";
    this.destination = dest;
    this.time = depTime;
    this.time2 = boardTime;
    this.date = date;
    this.gate = g;
    this.passengers = new ArrayList<Passenger>();
    this.load = 0;
  }
    
  // book passengers to flight
  void book(Passenger p) {
    this.passengers.add(p);
    this.load++;

    println(p.lastName + ",", p.firstName, "has been added to flight", this.airline + this.flightNum);
    println("");
  }
  
  
  // boarding pass info for the passes[] array
  void boardingPassInfo() {
    int numPasses = this.load;
    
    if(numPasses == 0) {
      println("There are no boarding passes to print");
    }
    else {
      passes = new Pass[numPasses];
      
      int i = 0;
      String[] seats = {"A", "C", "D", "E", "F", "G", "H", "K"};
      
      for(Passenger p: this.passengers) {
        String r = str(round(random(12,40)));
        String s = (seats[round(random(7))]);
        String seat = r + s;
        
        passes[i] = new Pass(this, p, seat);
        i++;
      }
    }
  }
  
  
  void createPassSheets() {
    int numSheets = ceil(this.load / float(passesPerColumn));
    int i = 0;
    
    for(int n = 0; n < numSheets; n++) {
      createSheet(n + 1, i);
      i += passesPerColumn;
    }
  }
  
  
  void createSheet(int sheetNum, int iStart) {
    int i = iStart;
    
    // creates a new blank white page
    fill(255);
    stroke(0);
    rect(0, 0, sheetWidth, sheetHeight);
    
    for(int row = 0; row < passesPerColumn; row++) {
      int y1 = row * (sheetHeight/passesPerColumn); // single column, so no need to increment x-values
      
      try {
        this.passes[i].drawPass(y1);
        i++;
      }
      catch(Exception e) {}
    }
    
    // saving the file that was just created
    String sheetDirectory = "passes/" + this.airline + this.flightNum + "/";
    String sheetTitle = this.airline + this.flightNum + " " + sheetNum + ".jpg";
    String finalPath = sheetDirectory + sheetTitle;
    
    save(finalPath);
  }


  // print flight manifest
  void printManifest() {
    println("------------------------------------------------------------");
    println(this.airline + this.flightNum);
    println("From", this.origin, "     ", "To", this.destination);
    println("Manifest consisting of", this.load, "passenger(s)");
    println("------------------------------------------------------------");
    println("");

    for(Passenger p: this.passengers) {
      p.printInfo();
      println("");
    }
    
    println("------------------------------------------------------------");
  }
  
}
