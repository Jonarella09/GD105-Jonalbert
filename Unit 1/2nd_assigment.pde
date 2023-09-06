// Comments pending -/

void setup()
{
      size(500, 500);
      background(213, 173, 75);
      noLoop();
}

void draw()
{
      noStroke();
      
      int squareSize1 = 400;
      int squareSize2 = 300;
      int squareSize3 = 200;
      
      float firstSquareY = 1.5 * 50; //1.5 inches * 50 pixels(1 inch)
      float secondSquareY = 3 * 50; //3 inches * 50 pixels(1 inch)
      float thirdSquareY = 4.5 * 50; //4.5 inches * 50 pixels(1 inch)
      
      float offsetX = width * 0.5; // Storing the center of the x coord
      
      float xCoord1 = offsetX - (squareSize1 * 0.5);
      float xCoord2 = offsetX - (squareSize2 * 0.5);
      float xCoord3 = offsetX - (squareSize3 * 0.5);
      
      fill(230,189,13);
      square(xCoord1, firstSquareY, squareSize1);
      
      fill(242,209,88);
      square(xCoord2, secondSquareY, squareSize2);

      fill(180,187, 179);
      square(xCoord3, thirdSquareY, squareSize3);  
}
