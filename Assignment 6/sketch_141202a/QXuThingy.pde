class QXuThingy {  // Definition of the creature QXuThingy
  float x, y; //location
  float s;
  float theta, phi, delta_1, delta_2, delta_3, delta_4;
  QXuThingy(float _size) {
  s = _size;
  x = -1.25*s;
  y = 0;
  theta = 0;
  phi = 0;
  delta_1 = PI/800;
  delta_2 = PI/200;
  delta_3 = PI/873;
  delta_4 = PI/192;
  }


  void display() {
    
    //the black part of the body
    fill(0);
    beginShape();
    curveVertex(x, y);
    curveVertex(x, y);
    curveVertex(x-0.08*s, y-0.125*s);
    curveVertex(x-0.06*s, y-0.28*s);
    curveVertex(x-0.08*s, y-0.38*s);
    curveVertex(x-0.07*s, y-0.5*s);
    curveVertex(x-0.04*s, y-0.625*s);
    curveVertex(x, y-0.73*s);
    curveVertex(x+0.045*s, y-0.82*s);
    curveVertex(x+0.17*s, y-s);
    curveVertex(x+0.18*s, y-1.125*s);
    curveVertex(x+0.15*s, y-1.24*s);
    curveVertex(x+0.22*s, y-1.18*s);
    curveVertex(x+0.295*s, y-1.125*s);
    curveVertex(x+0.42*s, y-1.18*s);
    curveVertex(x+0.545*s, y-1.21*s);
    curveVertex(x+0.67*s, y-1.22*s);
    curveVertex(x+0.795*s, y-1.20*s);
    curveVertex(x+0.92*s, y-1.125*s);
    curveVertex(x+0.85*s, y-1.05*s);
    curveVertex(x+0.77*s, y-0.92*s);
    curveVertex(x+0.82*s, y-0.83*s);
    curveVertex(x+0.82*s, y-0.8*s);
    curveVertex(x+0.80*s, y-0.77*s);
    curveVertex(x+0.73*s, y-0.75*s);
    curveVertex(x+0.69*s, y-0.79*s);
    curveVertex(x+0.63*s, y-0.865*s);
    curveVertex(x+0.545*s, y-0.81*s);
    curveVertex(x+0.42*s, y-0.75*s);
    curveVertex(x+0.295*s, y-0.68*s);
    curveVertex(x+0.17*s, y-0.58*s);
    curveVertex(x+0.085*s, y-0.47*s);
    curveVertex(x+0.03*s, y-0.3*s);
    curveVertex(x+0.17*s, y-0.2*s);
    curveVertex(x+0.12*s, y-0.20*s);
    curveVertex(x+0.03*s, y-0.18*s);
    curveVertex(x+0.01*s, y-0.1*s);
    curveVertex(x+0.01*s, y-0.1*s);
    endShape(CLOSE);
    
    //the white part of the body
    fill(255);
    beginShape();
    curveVertex(x, y);
    curveVertex(x, y);
    curveVertex(x-0.08*s, y-0.125*s);
    curveVertex(x-0.01*s, y-0.28*s);
    curveVertex(x+0.03*s, y-0.375*s);
    curveVertex(x+0.085*s, y-0.47*s);
    curveVertex(x+0.1*s, y-0.625*s);
    curveVertex(x+0.06*s, y-0.615*s);
    curveVertex(x+0.07*s, y-0.71*s);
    curveVertex(x+0.13*s, y-0.78*s);
    curveVertex(x+0.21*s, y-0.81*s);
    curveVertex(x+0.27*s, y-0.75*s);
    curveVertex(x+0.33*s, y-0.78*s);
    curveVertex(x+0.42*s, y-0.81*s);
    curveVertex(x+0.5*s, y-0.875*s);
    curveVertex(x+0.545*s, y-0.95*s);
    curveVertex(x+0.54*s, y-s);
    curveVertex(x+0.65*s, y-1.07*s);
    curveVertex(x+0.71*s, y-1.1*s);
    curveVertex(x+0.795*s, y-1.09*s);
    curveVertex(x+0.92*s, y-1.125*s);
    curveVertex(x+0.85*s, y-s);
    curveVertex(x+0.77*s, y-0.92*s);
    curveVertex(x+0.82*s, y-0.83*s);
    curveVertex(x+0.82*s, y-0.8*s);
    curveVertex(x+0.80*s, y-0.77*s);
    curveVertex(x+0.73*s, y-0.75*s);
    curveVertex(x+0.69*s, y-0.79*s);
    curveVertex(x+0.63*s, y-0.865*s);
    curveVertex(x+0.545*s, y-0.81*s);
    curveVertex(x+0.42*s, y-0.75*s);
    curveVertex(x+0.295*s, y-0.68*s);
    curveVertex(x+0.17*s, y-0.58*s);
    curveVertex(x+0.085*s, y-0.47*s);
    curveVertex(x+0.03*s, y-0.3*s);
    curveVertex(x+0.17*s, y-0.2*s);
    curveVertex(x+0.12*s, y-0.20*s);
    curveVertex(x+0.03*s, y-0.18*s);
    curveVertex(x+0.01*s, y-0.1*s);
    curveVertex(x+0.01*s, y-0.1*s);
    endShape(CLOSE);
    
    //the eye area
    pushMatrix();
    translate(x+0.63*s, y-1.13*s);
    rotate(-PI/9);
    ellipse(-0.02*s, 0, 0.18*s, 0.07*s);
    popMatrix();
    
  } // display()
  
  void drawMouth() {
    //draw the teeth when it slows down
    noFill();
    beginShape();
    curveVertex(x+0.65*s, y-1.07*s);
    curveVertex(x+0.65*s, y-1.07*s);
    curveVertex(x+0.775*s, y-1.06*s);
    curveVertex(x+0.89*s, y-1.07*s);
    curveVertex(x+0.89*s, y-1.125*s);
    curveVertex(x+0.795*s, y-1.13*s);
    curveVertex(x+0.71*s, y-1.1*s);
    endShape(CLOSE);
    
    line(x+0.71*s, y-1.1*s, x+0.71*s, y-1.07*s);
    line(x+0.795*s, y-1.13*s, x+0.795*s, y-1.06*s);
    line(x+0.86*s, y-1.13*s, x+0.86*s, y-1.06*s);
  }

  void smallFish() {
    fill(#FC9A30);
    ellipse(x+1.2*s, y-1.125*s, 0.1*s, 0.04*s);
    triangle(x+1.15*s, y-1.125*s, x+1.12*s, y-1.11*s, x+1.12*s, y-1.14*s);
    //strokeWeight(2);
    point(x+1.22*s, y-1.125*s);
  } //draw a small fish
  
  void moveSmallFish(float delta, float theta) {
    phi += delta;
    rotate(phi-theta);
    smallFish();
  }
  
  void move() {
    pushMatrix();
    translate(width/2, height/2);
   if (sin(theta) >= 0.5) {
      theta += delta_1;
      rotate(theta);
      display();
      drawMouth();
      moveSmallFish(delta_3, theta);
    }//when the angle is between (1/6)PI and (1/3)PI, the blackfish and the small fish are at a lower speed
    else if (sin(theta) < 0.5) {
      theta += delta_2;
      rotate(theta);
      display();
      moveSmallFish(delta_4, theta);
      
    }//once it gets past (1/3)PI, the blackfish and the small fish speeds up
    popMatrix();       
  } // move()

   
}// end of class QXuThingy
