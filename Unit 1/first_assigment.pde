void setup()
{
      size(1024, 1024);             //Creating a canva of 1024 x 1024
      background(0);                //Background color set to black
      noLoop();
}

void draw()
{    
      stroke(255, 255, 255);        //Stroke color set to white
      strokeWeight(20);             //Stroke size

      //Drawing face
      
      line(200, 300, 400, 300);    //Left Eye
      line(650, 300, 850, 300);    //Right Eye
      line(250, 750, 800, 750);    //Mouth
      
      
      // Nose
      line(450, 600, 600, 600);
      line(450, 600, 520, 500);
      line(600, 600, 520, 500);
  
}
