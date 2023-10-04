// Image by Matthew R.F.
// Declare variables for position, speed, collision margin, color, and image
float x, y;
float x_speed, y_speed, collision_margin;
color ravioli_color;
PImage ravioli_non_copyrighted_image;

void setup() {
  // Create a full-screen canvas without a cursor and set the frame rate to 60 frames per second
  fullScreen();
  noCursor();
  frameRate(60);
  
  // Load the image of a non-copyrighted ravioli
  ravioli_non_copyrighted_image = loadImage("ravioli_non_copyrighted_image.png");
  
  // Initialize the initial position of the ravioli image to a random location within the canvas
  x = random(width - ravioli_non_copyrighted_image.width);
  y = random(height - ravioli_non_copyrighted_image.height);
  
  // Set a collision margin to give the perception of the image actually touching the border
  collision_margin = 5;
  
  // Generate a random initial color for the ravioli
  ravioli_color = color(random(255), random(255), random(255));
  
  // Determine the initial speed of the ravioli based on the canvas width
  //(There's a better way to do this probably)
  if (width <= 1280) {
    x_speed = 1.5;  
    y_speed = 1.5;
  } else if (width <= 1920) {
    x_speed = 2.2;  
    y_speed = 2.2;
  } else if (width <= 2560) {
    x_speed = 3;  
    y_speed = 3;
  } else {
    x_speed = 2;  
    y_speed = 2;
  }
}

void draw() {
  // Set the background color to black
  background(0);
  
  // Apply the ravioli's color as a tint to the image
  tint(ravioli_color);
  
  // Display the ravioli image at its current position
  image(ravioli_non_copyrighted_image, x, y);
  
  // Update the position of the ravioli based on its speed
  x += x_speed;
  y += y_speed;
  
  // Check for collisions with the canvas borders
  // Note: The -5 is only used to give the perception of the image actually touching the border (the image is actually bouncing a little over the border limit)
  if (x + ravioli_non_copyrighted_image.width - collision_margin >= width || x <= 0) {
    // Reverse the horizontal speed to make the ravioli bounce off the horizontal borders
    x_speed *= -1;
    
    // Change the color of the ravioli to a new random color
    ravioli_color = color(random(255), random(255), random(255));
  }
  if (y + ravioli_non_copyrighted_image.height - collision_margin >= height || y <= 0) {
    // Reverse the vertical speed to make the ravioli bounce off the vertical borders
    y_speed *= -1;
    
    // Change the color of the ravioli to a new random color
    ravioli_color = color(random(255), random(255), random(255));
  } 
}
