// this array creates two arrays of floats but with 
// no size, and with no effect in the draw loop. 

// fix the sketch so that the arrays have some size 
// and values, and are then used to draw something to 
// the screen in the draw loop. 

// finally, add behavior that changes the value of each 
// float in the loop every frame. try to add more arrays 
// (for colors, angles, etc) if there is behavior that 
// you want to change that doesn't involve positions.

int num = 100;
float[] xPositions = new float[num];
float[] yPositions = new float[num];
float[] siz = new float[num];
float[] dx = new float[num];
float[] dy = new float[num];

void setup() {
  size(600, 600);
  background(100);
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = 0;
    yPositions[i] = 0;
    siz[i] = random(20,100);
    dx[i] = random(5,10);
    dy[i] = random(5,10);
  }
}

void draw() {
  rectMode(CENTER);
  for (int i = 0; i < xPositions.length; i++) {
    float c = map(i, 0, xPositions.length, 0, 255);
    float o = map(i, 0, xPositions.length, 200, 255);
    xPositions[i] += dx[i];
    yPositions[i] += dy[i];
      fill(c, o);
      rect(xPositions[i], yPositions[i], siz[i], siz[i]);
      if (xPositions[i]>width || yPositions[i]>height){
        xPositions[i] = 0;
        yPositions[i] = 0;
      }
  }
}
