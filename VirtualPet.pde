import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(400, 400);
  background(#33d6ff);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(#33d6ff);
  int y = arduino.analogRead(5);
  if (y >= 70) {
    y = 70;
  }
  //for(float x = -250; x < 450; x=x + .01) {
  //  //background(#33d6ff);
  //  noStroke();
  //  fill(#ffffff);
  //  ellipse(x+100, 100, 50, 50);
  //  ellipse(x+140, 90, 75, 75);
  //  ellipse(x+170, 100, 60, 60);
  //  ellipse(x+195, 110, 30, 30);
  //  println(x, "x");
  //}
  System.out.println(y);
  noStroke();
  fill(#336600);
  rect(0, 300, 400, 100);
  fill(#0033cc);
  arc(300, 300, 150, 125, 0, PI);
  fill(#4d2600);
  ellipse(150, 260, 175, 75);
  fill(#663300);
  ellipse(185, 245, 70, 60);
  stroke(0, 0, 0);
  fill(#4d2600);
  ellipse(85, 275, 30, 75);
  stroke(0, 0, 0);
  ellipse(185, 275, 30, 75);
  noStroke();
  translate(152.5-.25*y, 50);
  rotate(radians(57-.1*y));
  fill(#663300);
  rect(195, 30, 45, 45);
  fill(#ffffe6);
  triangle(210, 15, 205, 50, 215, 45);
}
