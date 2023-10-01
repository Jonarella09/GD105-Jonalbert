//

float x, y;
float x_speed, y_speed, collision_margin;
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
  collision_margin = 5;
  ravioli_color = color(random(255), random(255), random(255));
  
  
  if(width <= 1280)
  {
    x_speed = 1.5;  
    y_speed = 1.5;
  }
  else if(width <= 1920)
  {
    x_speed = 2.2;  
    y_speed = 2.2;
  }
  else if(width <= 2560)
  {
    x_speed = 3;  
    y_speed = 3;
  }
  else
  {
    x_speed = 2;  
    y_speed = 2;
  }
}

void draw()
{
  background(0);
  tint(ravioli_color);
  image(ravioli_non_copyrighted_image, x, y);
  
  x += x_speed;
  y += y_speed;
  
  
  // Note: The -5 is only used to give the perception of the image actually touching the border(the image is actually bouncing a little over the border limit)
 
  if(x + ravioli_non_copyrighted_image.width - collision_margin >= width || x <= 0)
  {
    x_speed *= -1;
    ravioli_color = color(random(255), random(255), random(255));
  }
  if(y + ravioli_non_copyrighted_image.height - collision_margin >= height || y <= 0)
  {
    y_speed *= -1;
    ravioli_color = color(random(255), random(255), random(255));
  } 
  
}
