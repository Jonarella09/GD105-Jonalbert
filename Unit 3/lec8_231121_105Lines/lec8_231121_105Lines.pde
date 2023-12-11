boolean savedImage = false;


// Define variables
int numLines = 105; // Total number of lines

float radius = 150; // Radius of the circular pattern
float centerX; // X-coordinate of the center of the canvas
float centerY; // Y-coordinate of the center of the canvas
float angle; // Angle between lines

color[] lineColors = 
{ // Array of colors for lines
  color(255, 0, 0),   // Red
  color(0, 255, 0),   // Green
  color(0, 0, 255),   // Blue
  color(255, 255, 0)  // Yellow
};

void setup()
{
  size(400, 400); // Create a canvas of size 400x400 pixels
  background(0);  // Set background color to Black

  // Calculate the center coordinates and angle
  centerX = width / 2; // Calculate X-coordinate of canvas center
  centerY = height / 2; // Calculate Y-coordinate of canvas center
  angle = TWO_PI / numLines; // Calculate angle between lines
  drawArt();
}

void drawArt() 
{
  strokeWeight(2); // Set the thickness of the lines

  // Loop to draw the lines
  for (int i = 0; i < numLines ; i++) {
  // Calculate coordinates for the lines

    // Calculate the coordinates for the first endpoint (x1, y1) of the line
    float x1 = centerX + cos(angle * i) * radius ;
    float y1 = centerY + sin(angle * i) * radius ;

    // Calculate the coordinates for the second endpoint (x2, y2) of the line
    // (i * 2) and (i * 1.6) are used to modify the angle at which the lines are drawn, resulting in a symmetrical pattern

    float x2 = centerX + cos(angle * (i * 1)) * radius;
    float y2 = centerY + sin(angle * (i * 21)) * radius;

    // Select a color for the lines from the array of colors
    int colorIndex = i % lineColors.length;

    stroke(lineColors[colorIndex]); // Set the stroke (line) color

    // Draw lines
    line(width - x1, y1, width - x2, y2);
  }
  // Save the output as an image file
  if (!savedImage) 
  {
    save("105Lines.png");
    savedImage = true;
  }
  
}
