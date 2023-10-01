float angle;
PImage background;

void setup()
{
  size(850, 850);
  frameRate(100);
  background = loadImage("kaos_logo.png");
  angle = 0;
 
}

void draw()
{
  // Translate the canvas to the center
  for(int i = 0; i < 360; i++)
  {
    println(sin(i));
    println(cos(i));
    
  }
  
  translate(width / 2, height / 2);
  
  rotate(radians(angle));

  imageMode(CENTER);
  image(background,0,0);

  
  
  angle += 1;
}
