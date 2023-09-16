// Jonalbert E. -  GD105

/*
Saskia Freeke’s daily drawing Replication
Original: Geometric Shapes / 230818
Source Link: //https://64.media.tumblr.com/cf987798db8463e913efbd960f59b091/58e3afdf5df20f0b-64/s1280x1920/17e2539d1aac524e393f498c1c7214ec4cfb0746.png
*/



int squares_per_row = 4; // Number of squares per row

void setup() 
{
      size(1024, 1024); // Set the canvas size
      background(255); // Set the background color to white
}

void draw()
{
      strokeWeight(2); // Set the stroke weight
    
      float square_size = width / squares_per_row; // Calculate the size of each square
    
      // Draw the squares
      draw_row(0.75, square_size, 4);
      draw_row(square_size + 0.75, square_size, 4);
      draw_row(square_size * 2 + 0.75, square_size, 2);
      draw_row(square_size * 3 + 0.75, square_size, 2);
    
      // Draw the first row of lines
      draw_grid_lines(square_size * 0, square_size * 0, -18, square_size / 18, square_size, 'n');
      draw_grid_lines(square_size * 1, square_size * 0, -18, square_size / 18, square_size, 'n');
    
      // Draw the third row of lines
      draw_grid_lines(square_size * 3, square_size * 0, 32, square_size / 32, square_size, 'c');
    
      // Second layer
      draw_grid_lines(square_size * 0, square_size * 0, 2, square_size / 2, square_size, 'c');
      draw_grid_lines(square_size * 1, square_size * 0, 4, square_size / 4, square_size, 'c');
      draw_grid_lines(square_size * 2, square_size * 0, 4, square_size / 4, square_size, 'c');
      draw_grid_lines(square_size * 2, square_size * 0, 1, square_size / 1, square_size, 'n');
    
      draw_grid_lines(square_size * 0, square_size * 0, -2, square_size / 2, square_size, 'c'); // V
      draw_grid_lines(square_size * 1, square_size * 0, -2, square_size / 2, square_size, 'c'); // V
      draw_grid_lines(square_size * 2, square_size * 0, -1, square_size / 1, square_size, 'c'); // V
      draw_grid_lines(square_size * 0, square_size * 0, -1, square_size / 1, square_size, 'n'); // V
    
      // Second row of lines
      draw_grid_lines(square_size * 0, square_size * 1, -18, square_size / 18, square_size, 'n');
      draw_grid_lines(square_size * 1, square_size * 1, -18, square_size / 18, square_size, 'n');
      draw_grid_lines(square_size * 0, square_size * 1, 18, square_size / 18, square_size, 'n'); // H
      draw_grid_lines(square_size * 2, square_size * 1, -4, square_size / 4, square_size, 'b');
      draw_grid_lines(square_size * 2, square_size * 1, -1, square_size / 1, square_size, 'c');
    
      // Horizontal details
      draw_grid_lines(square_size * 0, square_size * 1, 2, square_size / 2, square_size, 'c');
      draw_grid_lines(square_size * 1, square_size * 1, 2, square_size / 2, square_size, 'c');
      draw_grid_lines(square_size * 2, square_size * 1, 2, square_size / 2, square_size, 'c');
      draw_grid_lines(square_size * 3, square_size * 1, 2, square_size / 2, square_size, 'c');
    
      // Third row of lines
      draw_grid_lines(square_size * 0, square_size * 2, 18, square_size / 18, square_size, 'n'); // H
      draw_grid_lines(square_size * 1, square_size * 2, 2, square_size / 2, square_size, 'n'); // H
      draw_grid_lines(square_size * 1, square_size * 2, -4, square_size / 4, square_size, 'b'); // V
      draw_grid_lines(square_size * 1, square_size * 2, -1, square_size / 1, square_size, 'n'); // V
      draw_grid_lines(square_size * 2, square_size * 2, -4, square_size / 4, square_size, 'b'); // V
      draw_grid_lines(square_size * 2, square_size * 2, -1, square_size / 1, square_size, 'n'); // V
      draw_grid_lines(square_size * 3, square_size * 2, -1, square_size / 1, square_size, 'n'); // V
    
      // Fourth row of lines
      draw_grid_lines(square_size * 0, square_size * 3, -9, square_size / 9, square_size, 'n');
      draw_grid_lines(square_size * 1, square_size * 3, 2, square_size / 2, square_size, 'n'); // H
      draw_grid_lines(square_size * 3, square_size * 3, -1, square_size / 1, square_size, 'n'); // V
    
      // Big Black curved lines
      draw_curved_lines(square_size * 4, square_size * 0, square_size * 2, square_size * 2, -4.0, sqrt((square_size * 2) * (square_size * 2)) / 4, 'n');
      draw_curved_lines(square_size * 4, square_size * 0, square_size * 0, square_size * 2, 4.0, sqrt((square_size * 2) * (square_size * 2)) / 4, 'n');
    
      // Big Blue curved lines
      draw_curved_lines(square_size * 2, square_size * 4, square_size * 2, square_size * 2, -16.0, sqrt((square_size * 2) * (square_size * 2)) / 16, 'b');
      draw_curved_lines(square_size * 2, square_size * 4, square_size * 2, square_size * 4, 16.0, sqrt((square_size * 2) * (square_size * 2)) / 16, 'b');
    
      // Small Blue curved lines
      draw_curved_lines(square_size * 2, square_size * 2, square_size * 1, square_size * 1, -16.0, sqrt((square_size) * (square_size)) / 16, 'b');
      draw_curved_lines(square_size * 2, square_size * 2, square_size * 1, square_size * 1, 16.0, sqrt((square_size) * (square_size)) / 16, 'b');
    
      // Small Black curved lines
      draw_curved_lines(square_size * 2, square_size * 2, square_size * 1, square_size * 3, -8.0, sqrt((square_size) * (square_size)) / 8, 'n');
      draw_curved_lines(square_size * 2, square_size * 2, square_size * 2, square_size * 1, 8.0, sqrt((square_size) * (square_size)) / 8, 'n');
    
      // Details
      draw_grid_lines(square_size * 3, square_size * 0, 1, square_size / 2, square_size, 'c');
      draw_grid_lines(square_size * 2, square_size * 2, 1, square_size / 2, square_size * 2, 'c');
      draw_grid_lines(square_size * 0, square_size * 3.50, 1, square_size / 2, square_size, 'n');
      draw_grid_lines(square_size * 0, square_size * 1, -3, square_size / 2, square_size, 'c');
      draw_grid_lines(square_size * 2, square_size * 2, -1, square_size / 2, square_size, 'n');
}

//Function to draw lines from a starting vanishing point(don't know how to explain this)
void draw_curved_lines(float xStart, float yStart, double line_start_x, float line_start_y, float num_lines, double distance_apart, char line_color)
{
      if (line_color == 'b') 
      {
            stroke(#279DFF); // Blue color
            strokeWeight(2.5);
      }
      else
      {
            stroke(#000000); // Black color
            strokeWeight(3);
      }
    
      if (num_lines < 0)
      {
            num_lines = num_lines * -1;
    
            for (int i = 0; i < num_lines; i++)
            {
                  line(xStart, yStart, (float)line_start_x, line_start_y);
                  line_start_x = line_start_x + distance_apart;
            }
      } 
      else 
       {
             for (int i = 0; i < num_lines; i++) 
             {
                   line(xStart, yStart, line_start_y, (float)line_start_x);
                   line_start_x = line_start_x + distance_apart;
             }
       }
}

// Function to draw lines
void draw_grid_lines(float xStart, float yStart, float num_lines, float distance_apart, float line_length, char line_color) 
{
      if (line_color == 'c') 
      {
            stroke(#50BDB9); // Light Blue color
            strokeWeight(2.5);
      } 
      else if (line_color == 'b') 
      {
            stroke(#279DFF); // Blue color
            strokeWeight(2.5);
      } else 
      {
            stroke(#000000); // Black color
            strokeWeight(2);
      }
    
      if (num_lines < 0)
      {
            num_lines = num_lines * -1;
        
            for (int i = 0; i < num_lines; i++)
            {
                  line(xStart, yStart, xStart, yStart + line_length);
                  xStart = xStart + distance_apart;
            }
      }
      else
      {
            for (int i = 0; i < num_lines; i++)
            {
                  line(xStart, yStart, xStart + line_length, yStart);
                  yStart = yStart + distance_apart;
            }
      }
}

// Function to draw a row of squares
void draw_row(float y, float size_square, float num_squares)
{
      for (int i = 0; i < num_squares; i++)
      {
            float xCoord = size_square * i;
            float yCoord = y;
            rect(xCoord, yCoord, size_square, size_square);
      }
}
