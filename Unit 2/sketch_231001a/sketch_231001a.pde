float x, y;
float x_speed = 1;
float y_speed = 1;
color ravioli_color;
PImage ravioli_non_copyrighted_image;

void setup()
{
  fullScreen();
  noCursor();
  frameRate(60);
  ravioli_non_copyrighted_image = loadImage("ravioli_non_copyrighted_image.png");
  x = random(width - ravioli_non_copyrighted_image.width);
  y = random(height - ravioli_non_copyrighted_image.height);
  ravioli_color = color(random(255), random(255), random(255));
}

void draw()
{
  background(0);
  tint(ravioli_color);
  image(ravioli_non_copyrighted_image, x, y);
  
  x += x_speed;
  y += y + y_speed;
  
  
}
