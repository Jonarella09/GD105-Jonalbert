// This is weird, creating everything by itself isn't really difficult most of the time
// HOWEVER, MAKING IT WORK TOGETHER CORRECTLY??? I'm done... 

boolean savedImage = false;


// Player variables
int playerX, playerY; // Player position
int playerSize = 60; // Player size
int playerSpeed = 8; // Player speed

// Obstacle variables
int obstacleWidth = 100; // Obstacle width
int obstacleHeight = 100; // Obstacle height
int obstacleSpeed = 7; // Obstacle speed

// Maximum number of obstacles and arrays to store obstacle positions and activity
int maxObstacles = 3;
int[] obstacleX = new int[maxObstacles]; // Array to store obstacle X positions
int[] obstacleY = new int[maxObstacles]; // Array to store obstacle Y positions
boolean[] obstacleActive = new boolean[maxObstacles]; // Array to check if obstacle is active

// Game state
boolean gameOver = false; // Flag to check game over

// Time and interval for obstacle creation
int obstacleInterval = 120; // Interval between obstacle creation
int lastObstacleTime = 0; // Variable to store the time of the last obstacle creation

void setup() 
{
    size(800, 800);
    playerX = width / 4;
    playerY = height / 2;

    // Initialize obstacleActive array
    for (int i = 0; i < maxObstacles; i++) 
    {
        obstacleActive[i] = false;
    }
}

void draw() 
{
    background(255);

    // Game loop
    if (!gameOver) 
    {
        movePlayer();
        createObstacle();
        moveObstacle();
        checkCollision();
    }

    drawPlayer();

    // Draw active obstacles
    for (int i = 0; i < maxObstacles; i++) 
    {
        if (obstacleActive[i]) 
        {
            drawObstacle(obstacleX[i], obstacleY[i]);
        }
    }

    // Display game over message
    if (gameOver) 
    {
        displayGameOver();
    }
   // Save the output as an image file (if not already saved)
  if (!savedImage) 
  {
      save("gameplay.png"); // Save the image
      savedImage = true; // Set the flag to indicate the image has been saved
  }
    
}

void movePlayer() 
{
    // Player movement and screen boundary check
    if (keyPressed && key == ' ') 
    {
        playerY -= playerSpeed * 2; // Jumping by reducing Y position
    } 
    else 
    {
        playerY += playerSpeed; // Gravity effect by increasing Y position
    }

    // Check if player fell off the bottom or top of the screen
    if (playerY >= height || playerY <= 0) 
    {
        gameOver = true;
    }
}

void drawPlayer() 
{
    // Draw player
    fill(0, 255, 0);
    ellipse(playerX, playerY, playerSize, playerSize);
}

void createObstacle() 
{
    // Generate obstacles at a set interval
    int currentTime = millis(); // Get the current time in milliseconds
    if (currentTime - lastObstacleTime > obstacleInterval) // Check if enough time has passed
    { 
        for (int i = 0; i < maxObstacles; i++) 
        {
            if (!obstacleActive[i]) 
            {
                obstacleX[i] = width;
                obstacleY[i] = (int) random(height - obstacleHeight);
                obstacleActive[i] = true;
                
                lastObstacleTime = currentTime; // Update the last obstacle creation time
                
                break; // Break the loop after creating one obstacle
            }
        }
    }
}

void moveObstacle() 
{
    // Move active obstacles
    for (int i = 0; i < maxObstacles; i++) 
    {
        if (obstacleActive[i])
        {
            obstacleX[i] -= obstacleSpeed;

            // Deactivate obstacle when it goes off screen
            if (obstacleX[i] < -obstacleWidth) 
            {
                obstacleActive[i] = false;
            }
        }
    }
}

void drawObstacle(int x, int y) 
{
    // Draw obstacle
    fill(255, 0, 0);
    rect(x, y, obstacleWidth, obstacleHeight);
}

void checkCollision() 
{
    // Check collision between player and obstacles
    for (int i = 0; i < maxObstacles; i++) 
    {   
        // I dont want to see this aberration again, there should be a better way I can't think of right now...
        if (obstacleActive[i] && playerX + playerSize / 2 > obstacleX[i] && playerX - playerSize / 2 < obstacleX[i] + obstacleWidth &&
            playerY + playerSize / 2 > obstacleY[i] && playerY - playerSize / 2 < obstacleY[i] + obstacleHeight) 
        {
            gameOver = true;
        }
    }
}

void displayGameOver() 
{
    // Display game over message
    textAlign(CENTER);
    textSize(60);
    fill(255, 0, 0);
    text("Game Over!", width / 2, height / 2);
    text("Press 'R' to Restart", width / 2, height / 2 + 80);
}

void keyPressed() 
{
    // Restart the game
    if (gameOver && key == 'r') 
    {
        gameOver = false;
        playerY = height / 2;

        // Reset obstacle flags and last obstacle creation time(so when the game is restarted new obstacle appears)
        for (int i = 0; i < maxObstacles; i++) 
        {
            obstacleActive[i] = false;
        }
        lastObstacleTime = millis();
    }
}
