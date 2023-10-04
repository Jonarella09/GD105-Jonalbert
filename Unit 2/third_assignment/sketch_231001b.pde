// Declare variables for rotation angle and background image
float angle;
float angle_rotation_speed;
PImage background;
int count;

void setup() 
{
  // Create a canvas of size 950x950 pixels, set the frame rate to 50 frames per second
  size(950, 950);
  frameRate(50);
  
  // Load the background image
  background = loadImage("kaos_logo.png");
  
  // Initialize the rotation angle
  angle = 0;
  
  // Getting the rotation speed - It will move 50 times before looping back
  angle_rotation_speed = (360.0 / 50.0);
  
  // Initialize the count variable to use later
  count = 0;
}

void draw() 
{
  
  // Set the background color to white
  background(255);
  
  // Translate the canvas to the center
  translate(width / 2, height / 2);
  
  // Draw a large circle at the center(some parts of the circle are cut by the image corners, yes, that's ok)
  circle(0, 0, 875);
  
  // Enclose image rotation within pushMatrix() and popMatrix()
  pushMatrix();
  
  // Rotate the canvas by the current angle
  rotate(radians(angle));
  
  // Set the image mode to center and display the background image
  imageMode(CENTER);
  image(background, 0, 0);
  
  // Restore the previous transformation matrix
  popMatrix();

  // Drawing circles in the middle of the canvas without rotation
  noFill();
  circle(0, 0, 140);
  circle(0, 0, 130);
  fill(255);
  circle(0, 0, 90);
  circle(0, 0, 65);
  circle(0, 0, 55);

  // Increment the angle for rotation
  angle += angle_rotation_speed;  
  
  // Save frames as PNG images while the angle is less than 360 degrees until 49 frames are saved
  if (round(angle) <= 360 && count < 49)
  {
    saveFrame("frames/####.png");
    println("saved " + frameCount + ".png");
    count += 1;
  }
  
  //Set the angle variable to 7.2 after it reaches 360
  //so it doesn't keep increasing the variable to the infinite(good for long execution time)
  //The variable is set to 7.2 instead of 0 so the loop continues smoothly instead of drawing two continous frames at 0(because 360 is virtually the same as 0 already)
  if(angle >= 360)
  {
    // Angle set to 7.2
    angle = angle_rotation_speed;
  }
}
