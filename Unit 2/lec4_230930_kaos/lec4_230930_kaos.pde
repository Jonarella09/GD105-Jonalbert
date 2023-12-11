// Background image by Jonalbert E.
// Formatting style: 2 tabs (large indentation) --> may change it later

boolean savedImage = false;


String kaos_name = "KAOS\nKAOS\nKAOS\nKAOS\nKAOS"; // Text to be displayed
PImage background; // Variable to store the background image

void setup() 
{
    size(1259, 1259); // Set the canvas size to the size of the background image
    background = loadImage("kaos_background.png"); // Load the background image
    image(background, 0, 0);// Display the background image
}

void draw() 
{
  
    textSize(40); // Set the text size
    textLeading(170); // Set the line spacing for the text
    fill(0, 0, 0); // Set the fill color for text and triangle to black
  
    // Translate to the center of the canvas
    translate(width / 2, height / 2);
  
    // Loop through angles from 0 to 360 in steps of 9 degrees
    for (int i = 0; i < 360; i = i + 9) 
    {
        // Rotate the coordinate system by the current angle(i)
        rotate(radians(i));
        
        /* Display the text at the center (0, 0) of the 
        rotated and translated coordinate system*/
        text(kaos_name, 0, 0);
        
        // Draw a triangle
        triangle(300, 500, 250, 10, 100, 150);
    }
    if (!savedImage) 
    {
        save("kaos.png");
        savedImage = true;
    }
}
