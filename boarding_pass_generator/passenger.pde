class Passenger {
  // fields
  String firstName;
  String lastName;
  boolean freqFlyer;
  String cabin;
  
  // constructor
  Passenger(String fn, String ln, boolean f, String c) {
    this.firstName = fn;
    this.lastName = ln;
    this.freqFlyer = f;
    this.cabin = c;
  }

  // print passenger info (for flight manifest)
  void printInfo() {
    println(this.lastName+",", this.firstName);
    if(this.freqFlyer) {
      println("FF: Y");
    }
    else {
      println("FF: N");
    }
  }

  String spacer(String t, int space) {
    while(t.length() < space) {
      t += " ";
    }

    return t;
  }
}
