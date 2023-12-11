// Response to: https://www.artsy.net/artwork/chul-hyun-ahn-visual-echo-experiment

boolean savedImage = false;

void setup() {
  size(800, 800);
}

void draw() {
  background(0);

  drawCircle(400, 100, 300, 'D', color(258, 115, 146));
  drawCircle(400, 700, 300, 'U', color(236, 147, -72));

  drawCircle(100, 400, 300, 'R', color(1, 171, 254));
  drawCircle(700, 400, 300, 'L', color(154, 251, 100));
  
  
  
  drawCircle(400, 100, 100, 'D', color(258, 115, 146));
  drawCircle(400, 700, 100, 'U', color(236, 147, -72));

  drawCircle(100, 400, 100, 'R', color(1, 171, 254));
  drawCircle(700, 400, 100, 'L', color(154, 251, 100));
  
   // Save the output as an image file
   if (!savedImage) 
   {
     save("squareResponse.png");
     savedImage = true;
   }
}

// 10+ Circles
void drawCircle(int x, int y, int size, char plane, color circleColor) {
  int directionX = 0;
  int directionY = 0;

  int shiftX = 0;
  int shiftY = 0;

  if ('U' == plane) {
    directionY = -45;
    shiftY = -10;
  }
  if ('D' == plane) {
    directionY = 45;
    shiftY = 10;
  }
  if ('L' == plane) {
    directionX = -45;
    shiftX = -10;
  }
  if ('R' == plane) {
    directionX = 45;
    shiftX = 12;
  }

  for (int i = 0; i < 8; i++) {
    float darkness = map(i, 0, 7, 0, 1.5); // Calculate darkness based on loop iteration
    color c = lerpColor(circleColor, color(0), darkness); // Interpolate color between initial color and black

    fill(c); // Set the fill color

    circle(x, y, size);
    circle(x + shiftX, y + shiftY, size);

    x = x + directionX;
    y = y + directionY;
  }
}
