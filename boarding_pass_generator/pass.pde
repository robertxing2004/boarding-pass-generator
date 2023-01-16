class Pass {
  Flight flight;
  Passenger passenger;
  String seat;
  
  // boarding pass constructor
  Pass(Flight f, Passenger p, String s) {
    this.flight = f;
    this.passenger = p;
    this.seat = s;
  }
  
  void drawPass(int y1) {
    int x1 = 50;
  
    textAlign(LEFT);
    fill(0);
    
    // font positions
    textFont(passFontMain);
    int yLine1 = y1 + 50;
    int yLine2 = yLine1 + 25;
    int yLine3 = yLine2 + 50;
    int yLine4 = yLine3 + 40;
    int yLine5a = yLine4 + 65;
    int yLine5b = yLine5a + 20;
    int yLine6 = yLine5b + 40;
    
    // line 1
    String name = this.passenger.lastName + " " + this.passenger.firstName;
    text(name, x1, yLine1);
    
    // line 2
    text("ECONOMY / ECONOMIQUE", x1, yLine2);
    textFont(passFontSmall);
    text("Frequent flyer/Voyageur assidu", x1 + 400, yLine2);
    
    // line 3
    String flight = this.flight.airline + " " + this.flight.flightNum;
    text("Flight/Vol", x1, yLine3);
    text("Date", x1 + 150, yLine3);
    text("From/De", x1 + 300, yLine3);
    text("Destination", x1 + 600, yLine3);
    
    // line 4
    textFont(passFontMain);
    text(flight, x1, yLine4);
    text(this.flight.date, x1 + 150, yLine4);
    text(this.flight.origin, x1 + 300, yLine4);
    text(this.flight.destination, x1 + 600, yLine4);
    
    // line 5
    textFont(passFontSmall);
    text("Boarding time", x1, yLine5a);
    text("Heure d'embarquement", x1, yLine5b);
    text("Gate", x1 + 400, yLine5a);
    text("Porte", x1 + 400, yLine5b);
    text("Seat", x1 + 650, yLine5a);
    text("Place", x1 + 650, yLine5b);
    textFont(passFontLarge);
    text(this.flight.time2, x1 + 200, yLine5b); 
    text(this.flight.gate, x1 + 450, yLine5b);
    text(this.seat, x1 + 700, yLine5b);
    line(x1, yLine5a - 30, x1 + 850, yLine5a - 30);
    line(x1, yLine5b + 15, x1 + 850, yLine5b + 15);
    
    // line 6
    textFont(passFontSmall);
    text("GATE CLOSES 15MIN PRIOR TO DEPARTURE/LA PORTE FERME 15MIN AVANT LE DEPART", x1 + 50, yLine6);
    
    //line 7
    text("Departure time/Heure de depart", x1, yLine6 + 40);
    text("Boarding Pass | Carte d'acces a bord", x1, yLine6 + 100);
    line(x1-50, yLine6 + 125, sheetWidth, yLine6 + 125);
    textFont(passFontMain);
    text(this.flight.time, x1 + 250, yLine6 + 45);
    
    // stub line 1
    textFont(passFontSmall);
    text("Cabin", x1 + 875, yLine2 - 15);
    text("Cabine", x1 + 875, yLine2);
    
    // stub line 2
    text("Flight", x1 + 875, yLine3);
    text("Vol", x1 + 875, yLine3 + 15);
    
    // stub line 3
    text("Seat", x1 + 875, yLine4 + 20);
    text("Place", x1 + 875, yLine4 + 35);
    
    // stub line 4
    text("Remarks/Observations", x1 + 875, yLine6 - 20);
    textFont(passFontMain);
    text("ADOC ATTS", x1 + 875, yLine6 + 10);
    
    // final info
    textFont(passFontLarge);
    text(this.passenger.cabin, x1 + 950, yLine2);
    text(flight, x1 + 950, yLine3 + 15);
    text(this.seat, x1 + 950, yLine4 + 35);
    
    // stub tear-off line
    line(x1 + 850, y1, x1 + 850, y1 + (sheetHeight/passesPerColumn));
  }
  
}
