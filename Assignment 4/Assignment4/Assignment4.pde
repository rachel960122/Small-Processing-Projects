//Qianzi Xu(Rachel), assignment 4

//setting the value of the margins
float xmar = 50;
float ymar = 50;
float[] usageU,usageC, musageU, musageC, myearsU;
int[] yearsU, yearsC;
PFont myFont = createFont("Arial Bold", 20);
PFont myFont2 = createFont("Arial Bold", 12);


void setup() {
  size(600, 400);
  smooth();
  background(255);
}//setup()


void draw() {
  background(255);
  //setting the background for the plot
  fill(#E5E1E1);
  strokeWeight(2);
  rectMode(CORNERS);
  rect(xmar, ymar, width-xmar, height-ymar);
  
  //read data from file
  String[] linesU = loadStrings("Energy Use Per Person-USA.txt");
  String[] linesC = loadStrings("Energy Use Per Person-Canada.txt");
  float[] usageU = new float[linesU.length];
  int[] yearsU = new int[linesU.length];
  float[] usageC = new float[linesC.length];
  int[] yearsC = new int[linesC.length];
  float[] myearsU = new float[linesU.length];
  float[] musageU = new float[linesU.length];
  float[] musageC = new float[linesC.length];
  
  //parse data
  for (int i = 0; i < linesU.length; i++) {
    String[] splitLinesU = split(linesU[i], ",");
    String[] splitlinesC = split(linesC[i], ",");
    yearsU[i] = int(splitLinesU[0]);
    usageU[i] = float(splitLinesU[1]);
    yearsC[i] = int(splitlinesC[0]);
    usageC[i] = float(splitlinesC[1]);
  }
  
  //computing the higher and lower limit of y-axis(integer)
  int hi = int(max(max(usageU), max(usageC)))+1;
  int lo = int(min(min(usageU), min(usageC)));
  
  //mapping data
  for (int i = 0; i < linesU.length; i++) {
    musageU[i] = map(usageU[i], lo, hi, ymar, height-ymar); 
    musageC[i] = map(usageC[i], lo, hi, ymar, height-ymar);
    myearsU[i] = map(yearsU[i], min(yearsU), max(yearsU), xmar, width-xmar);
}
  //drawing the US curve
  drawCurve(yearsU, usageU, color(255, 0, 0));
  //drawing the Canada curve
  drawCurve(yearsC, usageC, color(0, 255, 0));
  drawLegend();
  
  
  //showing year and usage when mouse hovers around data points
  for (int i = 0; i < myearsU.length; i++) {
    if (dist(myearsU[i], height-musageU[i], mouseX, mouseY) < 3) {
      textAlign(CENTER);
      textSize(10);
      text(yearsU[i] + ":" + usageU[i], myearsU[i], height-musageU[i]);
      stroke(255, 0, 0);
      line(myearsU[i], height-musageU[i], myearsU[i], height-ymar);
    }//US
    if (dist(myearsU[i], height-musageC[i], mouseX, mouseY) < 3) {
      textAlign(CENTER);
      textSize(10);
      text(yearsU[i] + ":" + usageC[i], myearsU[i], height-musageC[i]);
      stroke(0, 255, 0);
      line(myearsU[i], height-musageC[i], myearsU[i], height-ymar); 
    }//Canada
  }
  
  //draw X labels
  fill(0);
  for (int i = 0; i < yearsU.length; i+=10) {
    textAlign(CENTER, TOP);
    textSize(12);
    text(yearsU[i], myearsU[i], 355);
  }
  
  //draw Y labels
  float d = (height-ymar*2)/(hi-lo);
  for (int i = lo; i < hi+1; i++) {
    textAlign(RIGHT, CENTER);
    textSize(12);
    text(i, 40, height-ymar-d*(i-lo));
    stroke(0);
    line(50, height-ymar-d*(i-lo), 53, height-ymar-d*(i-lo));
  }
  
  //caption of the graph
  textFont(myFont);
  textAlign(LEFT, BOTTOM);
  text("Energy use, per capita", 50, 35);
  
  drawSource();
}//draw()
  

void drawCurve(int[] cx, float[] cy, color curveColor) {
  noFill();
  strokeWeight(1);
  float x1 = map(cx[0], min(cx), max(cx), xmar, width-xmar);
  float y1 = map(cy[0], 4, 9, ymar, height-ymar);
  float x2 = map(cx[cx.length-1], min(cx), max(cx), xmar, width-xmar);
  float y2 = map(cy[cx.length-1], 4, 9, ymar, height-ymar);
  stroke(curveColor);
  strokeWeight(1.25);

  
  beginShape();
    curveVertex(x1, 400-y1);
  for (int i = 0; i < cx.length; i++) {
    float x = map(cx[i], min(cx), max(cx), xmar, width-xmar);
    float y = map(cy[i], 4, 9, ymar, height-ymar);
    curveVertex(x, height-y);
    
  }
    curveVertex(x2, height-y2);
  endShape();
  for (int i = 0; i < cx.length; i++) {
    if (i != 0 && i != cx.length-1) {
      float x = map(cx[i], min(cx), max(cx), xmar, width-xmar);
      float y = map(cy[i], 4, 9, ymar, height-ymar);
      stroke(255);
      line(x, height-y+2, x, height-ymar-2);
    }
  }
}


void drawLegend() {
  stroke(color(255, 0, 0));
  line(480, 12, 500, 12);
  stroke(color(0, 255, 0));
  line(480, 30, 500, 30);
  fill(0);
  textAlign(LEFT, CENTER);
  textSize(12);
  text("US", 510, 12);
  text("Canada", 510, 30);
}

void drawSource() {
  textFont(myFont2);
  stroke(0);
  textAlign(RIGHT, BOTTOM);
  text("Source: World Bank", 585, 395);
}



  
  



