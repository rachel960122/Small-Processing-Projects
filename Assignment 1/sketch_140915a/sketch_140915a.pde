size(600, 600);
background(#C4F0E9);
smooth();
color brick_color = color(#B4B176);


//background
strokeWeight(2.5);
fill(brick_color);
rectMode(CORNERS);
rect(50, 50, 550, 600);



//structure
stroke(0);
//middle
line(50, 250, 550, 250);
line(50, 430, 550, 430);
//bottom
line(220, 430, 220, 600);
line(380, 430, 380, 600);//arch
//line(380, 470, 550, 470);
//line(380, 560, 550, 560);//right window
//line(50, 470, 220, 470);
//line(50, 560, 220, 560);//left window



//arch
fill(0);
rect(240, 510, 360, 600);
ellipse(300, 510, 120, 120);



//windows in the bottom
//left
stroke(255);
strokeWeight(5);
rect(60, 470, 210, 560);
line(60, 515, 210, 515);
line(90, 470, 90, 560);
line(120, 470, 120, 560);
line(150, 470, 150, 560);
line(180, 470, 180, 560);
line(210, 470, 210, 560);
//right
rect(390, 470, 540, 560);
line(390, 515, 540, 515);
line(420, 470, 420, 560);
line(450, 470, 450, 560);
line(480, 470, 480, 560);
line(510, 470, 510, 560);
line(540, 470, 540, 560);
//windows in the middle
//middle
strokeWeight(20);
line(257, 270, 342, 270);
strokeWeight(5);
rect(255, 270, 345, 420);
line(255, 315, 345, 315);
line(255, 360, 345, 360);
line(285, 270, 285, 420);
line(315, 270, 315, 420);
//right
strokeWeight(20);
line(367, 270, 452, 270);
strokeWeight(5);
rect(365, 270, 455, 420);
line(365, 315, 455, 315);
line(365, 360, 455, 360);
line(395, 270, 395, 420);
line(425, 270, 425, 420);
//left
strokeWeight(20);
line(147, 270, 232, 270);
strokeWeight(5);
rect(145, 270, 235, 420);
line(145, 315, 235, 315);
line(145, 360, 235, 360);
line(175, 270, 175, 420);
line(205, 270, 205, 420);



//Window at the top
//middle
rect(255, 200, 345, 245);
strokeWeight(10);
line(255, 200, 345, 200);
strokeWeight(3);
line(285, 200, 285, 245);
line(315, 200, 315, 245);
line(255, 222, 345, 222);
//right
rect(365, 200, 455, 245);
strokeWeight(10);
line(365, 200, 455, 200);
strokeWeight(3);
line(395, 200, 395, 245);
line(425, 200, 425, 245);
line(365, 222, 455, 222);
//left
rect(145, 200, 235, 245);
strokeWeight(10);
line(145, 200, 235, 200);
strokeWeight(3);
line(175, 200, 175, 245);
line(205, 200, 205, 245);
line(145, 222, 235, 222);
//highest one
rect(240, 130, 360, 175);
strokeWeight(10);
line(240, 130, 360, 130);
strokeWeight(3);
line(270, 130, 270, 175);
line(300, 130, 300, 175);
line(330, 130, 330, 175);
line(240, 152, 360, 152);



//tower
stroke(0);
strokeWeight(2);
noFill();
rect(470, 100, 550, 430);
strokeWeight(2);
stroke(0);
fill(brick_color);
arc(470, 430, 100, 100, PI, 2*PI);
stroke(brick_color);
strokeWeight(3);
line(423, 430, 517, 430);

stroke(0);
rect(550, 320, 600, 600);
stroke(255);
strokeWeight(5);
fill(0);
rect(570, 360, 630, 450);
line(595, 360, 595, 450);
line(570, 405, 600, 405);
//lower window
fill(0);
stroke(255);
strokeWeight(5);
rect(495, 280, 525, 325);
strokeWeight(3);
line(495, 302, 525, 302);
//upper window
strokeWeight(5);
rect(495, 190, 525, 235);
strokeWeight(3);
line(495, 212, 525, 212);
//top
stroke(#4B3F3F);
strokeWeight(3);
line(470, 135, 550, 135);
//1
stroke(0);
fill(#C4F0E9);
rect(487, 100, 495, 115);
stroke(#C4F0E9);
line(489.5, 100, 492.5, 100);
//2
stroke(0);
fill(#C4F0E9);
rect(510, 100, 518, 115);
stroke(#C4F0E9);
line(512.5, 100, 515.5, 100);
//3
stroke(0);
fill(#C4F0E9);
rect(533, 100, 541, 115);
stroke(#C4F0E9);
line(535.5, 100, 538.5, 100);



//clear the background
noStroke();
fill(#C4F0E9);
beginShape();
vertex(304, 50);
vertex(320, 100);
vertex(390, 100);
vertex(390, 160);
vertex(470, 160);
vertex(470, 100);
vertex(550, 100);
vertex(600, 0);
endShape();
beginShape();
vertex(296, 50);
vertex(280, 100);
vertex(210, 100);
vertex(210, 160);
vertex(50, 160);
vertex(0, 0);
endShape();
stroke(#C4F0E9);
strokeWeight(5);
point(307, 49);
point(293, 49);
point(550, 97);



//pointed top
fill(brick_color);
stroke(0);
strokeWeight(2);
triangle(300, 40, 280, 100, 320, 100);
stroke(brick_color);
strokeWeight(3);
line(280, 100, 320, 100);

stroke(0);
strokeWeight(2);
line(320, 100, 390, 100);
line(390, 100, 390, 160);
line(390, 160, 470, 160);

line(210, 100, 280, 100);
line(210, 100, 210, 160);
line(50, 160, 210, 160);



//cloud
noStroke();
fill(255);
ellipseMode(CORNERS);
ellipse(400, 25, 500, 50);
ellipse(450, 5, 580, 50);
ellipse(420, 40, 550, 70);

ellipse(150, 14, 250, 30);
ellipse(170, 20, 280, 40);



//tree
fill(#338634, 250);
stroke(0);
strokeWeight(5);
beginShape();
curveVertex(20, 0);
curveVertex(50, 0);
curveVertex(250, 140);
curveVertex(270, 320);
curveVertex(300, 450);
curveVertex(0, 500);
curveVertex(0, 0);
curveVertex(0, 20);
endShape();
//trunk
fill(#552B20);
beginShape();
curveVertex(150, 300);
curveVertex(150, 300);
curveVertex(80, 450);
curveVertex(130, 600);
curveVertex(0, 600);
curveVertex(10, 400);
curveVertex(0, 300);
curveVertex(0, 300);
endShape();
fill(#338634, 250);
beginShape();
vertex(150, 300);
vertex(40, 400);
vertex(0, 300);
endShape();



