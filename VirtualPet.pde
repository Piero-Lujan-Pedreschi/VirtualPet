
void setup(){
  size(400, 400, P3D);
  background(#33d6ff);
  smooth();
}
void draw(){
  noStroke();
  fill(#336600);
  rect(0, 300, 400, 100);
  fill(#0033cc);
  arc(320, 300, 150, 125, 0, PI);
  fill(#4d2600);
  ellipse(150, 250, 175, 75);
  fill(#663300);
  ellipse(185, 235, 70, 60);
  stroke(0, 0, 0);
  fill(#4d2600);
  ellipse(85, 265, 30, 75);
  stroke(0, 0, 0);
  ellipse(185, 265, 30, 75);
  translate(0, 0, 1);
  fill(#ffffe6);
  triangle(225, 230, 235, 235, 245, 210);
  fill(#000000);
  ellipse(245, 245, 5, 5);
  noStroke();
  translate(width/3, height/10, -1);
  rotate(radians(50));
  fill(#663300);
  rect(195, 30, 45, 45);
}

