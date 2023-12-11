boolean savedImage = false;

// ArrayList to store particles
ArrayList<Particle> particles;

void setup() 
{
  size(1000, 1000); // Set canvas size
  particles = new ArrayList<>(); // Initialize ArrayList for particles
  
  // Create multiple particles and add them to the list
  int numParticles = 1000;
  for (int i = 0; i < numParticles; i++) 
  {
    // Randomize particle attributes: position, size, color
    float x = random(width);
    float y = random(height);
    float size = random(10, 50);
    color col = color(random(0, 255), random(0, 255), random(0, 255), 150);
    
    // Create a particle with random attributes and add it to the list
    Particle p = new Particle(x, y, size, col);
    particles.add(p);
  }
}

void draw() 
{
  background(255); // Set canvas background
  
  // Update and display each particle
  for (Particle p : particles) 
  {
    p.update(); // Update particle position
    p.display(); // Display particle on the canvas
  }
  
  // Save the output as an image file (if not already saved)
  if (!savedImage) 
  {
    save("particles.png"); // Save the image
    savedImage = true; // Set the flag to indicate the image has been saved
  }
}

// Particle class to represent individual particles
class Particle 
{
  float x, y; // Position variables
  float size; // Size of the particle
  float xSpeed, ySpeed; // Speed variables for movement
  color col; // Color of the particle
  
  // Constructor to initialize particle attributes
  Particle(float pX, float pY, float pSize, color pCol) 
  {
    x = pX;
    y = pY;
    size = pSize;
    col = pCol;
    xSpeed = random(-2, 2); // Random horizontal speed
    ySpeed = random(-2, 2); // Random vertical speed
  }
  
  // Method to update particle position
  void update() 
  {
    x += xSpeed; // Update x-coordinate based on horizontal speed
    y += ySpeed; // Update y-coordinate based on vertical speed
    
    // Wrap around screen edges
    if (x > width) x = 0;
    if (x < 0) x = width;
    if (y > height) y = 0;
    if (y < 0) y = height;
  }
  
  // Method to display the particle
  void display() 
  {
    noStroke();
    fill(col);
    ellipse(x, y, size, size);
  }
}
