class StreetLight {
  //---Define class variables here---
  float x, y, h;
  boolean on;
  // constructor
  StreetLight(float tx, float ty, float th) {
    //---define your constructor and initial values here---   
    x = tx;
    y = ty;
    h = th;
    on = false;
  }
  boolean isOn() {
    return on;
  }
  void turnOn() {
    on = true;
  }
  void turnOff() {
    on = false;
  }
  void display() {
    drawLight();
  }
  void drawLight() {
    fill(0);
    rect(x, 0.5*y, 0.02*y, 0.5*y);
    stroke(0);
    strokeWeight(4);
    fill(255);
    beginShape();
      vertex(x-0.02*y, 0.5*y);
      vertex(x+0.04*y, 0.5*y);
      vertex(x+0.06*y, 0.5*y-0.10*y);
      vertex(x-0.04*y, 0.5*y-0.10*y);
    endShape(CLOSE);
    line(x-0.01*y, 0.5*y-0.10*y, x, 0.5*y);
    line(x+0.03*y, 0.5*y-0.10*y, x+0.02*y, 0.5*y);
    fill(0);
    beginShape();
      vertex(x-0.04*y, 0.5*y-0.105*y);
      vertex(x-0.01*y, 0.5*y-0.135*y);
      vertex(x+0.03*y, 0.5*y-0.135*y);
      vertex(x+0.06*y, 0.5*y-0.105*y);
    endShape(CLOSE);
    ellipseMode(CORNERS);
    ellipse(x+0.005*y, 0.5*y-0.15*y, x+0.015*y, 0.5*y-0.135*y);
    
    //turn on/off the light 
    if (on == false) {
      fill(#9A9B90);
    }
    else {
      fill(#F1F7AC);
    }
    stroke(0);
    strokeWeight(4);
    beginShape();
      vertex(x-0.02*y, 0.5*y);
      vertex(x+0.04*y, 0.5*y);
      vertex(x+0.06*y, 0.5*y-0.10*y);
      vertex(x-0.04*y, 0.5*y-0.10*y);
    endShape(CLOSE);
    line(x-0.01*y, 0.5*y-0.10*y, x, 0.5*y);
    line(x+0.03*y, 0.5*y-0.10*y, x+0.02*y, 0.5*y);   
    
    // draw the street light here
  }
} // end of class StreetLight
