// boarding pass parameters
int sheetWidth = 1275, sheetHeight = 1650;
int passesPerColumn = 4;
int passWidth, passHeight;
PFont passFontSmall, passFontMain, passFontLarge;

void setup() {
  size(1275, 1650);
  
  // passengers
  Passenger robert = new Passenger("ROBERT", "XING", true, "Y");
  Passenger harriet = new Passenger("HARRIET", "MELLOUL", true, "Y");
  Passenger cynthia = new Passenger("CYNTHIA", "SHEN", false, "Y");
  Passenger jessica = new Passenger("JESSICA", "LI", true, "Y");
  Passenger lily = new Passenger("LILY", "VILLENEUVE", false, "Y");
  Passenger kristin = new Passenger("KRISTIN", "McMILLAN", false, "Y");
  Passenger alona = new Passenger("ALONA", "CLINANSMITH", false, "Y");
  Passenger scott = new Passenger("SCOTT", "BRACKPOOL", false, "Y");
  
  Passenger kanav = new Passenger("KANAV", "PATWA", false, "Y");
  Passenger steven = new Passenger("STEVEN", "MU", false, "Y");
  Passenger aditya = new Passenger("ADITYA", "KUMAR", false, "Y");
  
 
  // flights
  Flight AC856 = new Flight("AC", 856, "LHR LONDON", "19:50", "19:05", "E74", "06JUL");
  Flight AI188 = new Flight("AI", 188, "DEL DELHI", "12:15", "11:30", "E78", "09APR");
  
  // book passengers for AC856 and then print the manifest to the console
  AC856.book(robert);
  AC856.book(harriet);
  AC856.book(cynthia);
  AC856.book(jessica);
  AC856.book(lily);
  AC856.book(kristin);
  AC856.book(alona);
  AC856.book(scott);
  AC856.printManifest();
  
  // book passenger for AI188 and then print the manifest to the console
  AI188.book(kanav);
  AI188.book(steven);
  AI188.book(aditya);
  AI188.printManifest();
  
  // initiate fonts
  layout();
  
  // print boarding passes for AC856
  AC856.boardingPassInfo();
  AC856.createPassSheets();
  
  // print boarding passes for AI188
  AI188.boardingPassInfo();
  AI188.createPassSheets();
  
  
  
  exit();
}

void layout() {
  passFontLarge = createFont("Consolas", 50);
  passFontMain = createFont("Consolas", 25);
  passFontSmall = createFont("Consolas", 15);
}