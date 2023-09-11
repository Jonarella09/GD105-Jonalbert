// Jonalbert E. -  GD105

/*
Homage to the Square: With Rays by Josef Albers Replication

Original: https://www.metmuseum.org/art/collection/search/489056
*/

/*
50 pixels = 1 inch
500 pixels = 10 inches
*/

void setup()
{
      size(500, 500);  // 10'' canvas
      background(213, 173, 75);  // Addidng color to the canvas
      noLoop(); //Stop the loop so it doesn't keep drawing the same frame
}

void draw()
{
      noStroke(); //Deletes the strokes
      
      // Defining the remaining square sizes:
      int squareSize1 = 400;
      int squareSize2 = 300;
      int squareSize3 = 200;
      
      // Calculating the Y coordinates of the squares
      float firstSquareY = 1.5 * 50; //1.5 inches * 50 pixels(1 inch)
      float secondSquareY = 3 * 50; //3 inches * 50 pixels(1 inch)
      float thirdSquareY = 4.5 * 50; //4.5 inches * 50 pixels(1 inch)
      
      // Calculating the canvas's horizontal center
      float offsetX = width * 0.5; // By dividing its width by 2: (500/2 or 500*0.5)
      
      /* Calculating the X coordinates of the squares. 
         First divide the square sizes by 2, 
         and then subtract the offsetX from the results.*/
      float xCoord1 = offsetX - (squareSize1 * 0.5);
      float xCoord2 = offsetX - (squareSize2 * 0.5);
      float xCoord3 = offsetX - (squareSize3 * 0.5);
      
      // Drawing squares
      fill(230,189,13);
      square(xCoord1, firstSquareY, squareSize1);
      
      fill(242,209,88);
      square(xCoord2, secondSquareY, squareSize2);

      fill(180,187, 179);
      square(xCoord3, thirdSquareY, squareSize3);  
}
