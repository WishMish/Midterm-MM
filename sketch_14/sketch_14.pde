// fix the sketch so that the rectangle is 
// drawn at the position of the mouse.

void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(80);
  float xPos = map(mouseX, 0, width, 0, 0);
  float yPos = map(mouseY, 0, height, 0, 0);
  translate(mouseX, mouseY);
  noStroke();
  rect(xPos, yPos, 100, 100);
}
