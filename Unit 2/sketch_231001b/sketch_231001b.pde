float angle;
PImage background;

void setup() {
  size(950, 950);
  frameRate(50);
  background = loadImage("kaos_logo.png");
  angle = 0;
}

void draw() {
  background(255);

  // Translate the canvas to the center
  translate(width / 2, height / 2);
  circle(0, 0, 875);
  
  // Enclose image rotation within pushMatrix() and popMatrix()
  pushMatrix();
  
  // Draw the rotating image
  rotate(radians(angle));
  imageMode(CENTER);
  image(background, 0, 0);
  
  popMatrix();

  noFill();
  circle(0, 0, 140);
  circle(0, 0, 130);
  fill(255);
  circle(0, 0, 90);
  circle(0, 0, 65);
  circle(0, 0, 55);

  angle += 7.2;
  if (angle < 360)
  {
    saveFrame("frames/####.png");
    println("saved " + frameCount + ".png");
  }
}
