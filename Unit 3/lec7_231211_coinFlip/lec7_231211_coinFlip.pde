boolean savedImage = false;

PVector squarePos;
boolean[] coinFlips = new boolean[5];

int squareSize, squareColor, backgroundColor;

void setup()
{
    size(800, 800);
    backgroundColor = 255;

    // Initialize coin flips
    for (int i = 0; i < coinFlips.length; i++)
    {
        coinFlips[i] = random(11) > 5;
    }

    // Set square position, size, colors based on coin flips
    squarePos = new PVector(coinFlips[0] ? width - 100 : 100, coinFlips[1] ? height - 100 : 100);
    squareSize = coinFlips[2] ? 150 : 250;
    squareColor = coinFlips[3] ? color(200, 100, 0) : color(0, 100, 100);
    backgroundColor = coinFlips[4] ? color(100, 150, 200) : color(200, 220, 100);
}

void draw()
{
    background(backgroundColor);
    drawPattern();

    // Save the output as an image file
    if (!savedImage)
    {
        save("coinFlip.png");
        savedImage = true;
    }
}

void drawPattern()
{
    // Draw multiple shapes based on coin flips
    noStroke();
    fill(squareColor);

    for (int x = 0; x < width; x += squareSize)
    {
        for (int y = 0; y < height; y += squareSize)
        {
            if ((x + y) % (squareSize * 2) == 0)
            {
                square(x, y, squareSize);
            }
        }
    }

    // Draw an additional shape based on coin flips
    fill(255, 0, 0, 150);
    if (coinFlips[2])
    {
        ellipse(squarePos.x, squarePos.y, squareSize * 1.5, squareSize * 1.5);
    }
    else
    {
        triangle(squarePos.x, squarePos.y, squarePos.x + 50, squarePos.y - 100, squarePos.x - 50, squarePos.y - 100);
    }
}
