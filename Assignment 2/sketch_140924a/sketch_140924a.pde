//Qianzi Xu(Rachel), Assignment 2
float x = 0, y = 250, w = PI/3000, z = 1.25 * PI;
color dial_color = color(255);

void setup() {
  size(500, 500);
  background(0);
  smooth();
  frameRate(100);
}

void drawDial(float x, color c) {
  noStroke();
  fill(c);
  ellipse(0, 0, x, x);
}

void drawSmallclocks(float a, float b, float c, float d, color e) {
  noStroke();
  fill(e);
  ellipse(a, b, c, c);
  stroke(0);
  strokeWeight(2);
  point(a, b - c*7/16);
  point(a, b + c*7/16);
  point(a - c*7/16, b);
  point(a + c*7/16, b);
  line(a, b, a + c*5.5*sin(d)/16, b + c*5.5*cos(d)/16);
}
  
void instructions() {
  stroke(255);
  textAlign(LEFT);
  textSize(17);
  text("Instructions", 10, 20);
  textSize(12);
  text("Press UP/DOWN to start/stop the hand;", 10, 45);
  text("Press LEFT/RIGHT to move the hand counterclockwise/clockwise;", 10, 65);
  text("Press R/G/B/Y/P/A to change the color of the dial to red/green/blue/yellow/purple", 10, 85);
  text("/random color;", 10, 105);
  text("Press W to reset the color to white;", 10, 125);
  text("Press DELETE to reset the clock", 10, 145);
}

//points on the biggest clock
void drawPoints() {
  point(325, 250);
  point(250, 175);
  point(250, 325);
  point(175, 250);
}
  
  
void draw() {
 // background(0);
  //stroke(255);
  instructions();
  pushMatrix();
  translate(width/2, height/2);
  drawDial(160, dial_color);
  if (keyPressed == true || true) {
    if (key == 'b') {
      //color variable 
      // VV this is moved outside of the if statements
      dial_color = color(#498FF0);
    }
    else if (key == 'g') {
      dial_color = color(#45F02C);
    }
    else if (key == 'r') {
      dial_color = color(#FC0D0D);
    }
    else if (key == 'y') {
      dial_color = color(#FCE50D);
    }
    else if (key == 'p') {
      dial_color = color(#FA6AD9);
    }
    else if (key == 'w') {
      dial_color = color(255);
    }
    else if (key == 'a') {
      dial_color = color(random(255), random(255), random(255));
      
      stroke(random(255), random(255), random(255));
      textSize(20);
      text("It's party time !!!", 50, 200);
      //Another two lines of code that don't work
    }
    drawDial(160, dial_color);
    //outside of if statements!
    //draw clock, passing the color variable in as the color value
    
  }
    
  stroke(0);
  rotate(z);
  line(0, 0, 45, 45);
  popMatrix();
  z += w;
  strokeWeight(3);
  drawPoints();
  if (keyPressed) {
    if (keyCode == UP) {
      w = PI/3000;
    }
    else if (keyCode == DOWN) {
      w = 0;
    }
    else if (keyCode == LEFT) {
      z -= PI/600;
    }
    else if (keyCode == RIGHT) {
      z += PI/600;
    }
    else if (key == DELETE) {
      z = 1.25 * PI;
      //why 1.25?
      w = 0;
    }
  }
  
}

void mouseClicked() {
  drawSmallclocks(mouseX, mouseY, random(40, 80), random(0, 2*PI), color(random(255), random(255), random(255)));
}



  

