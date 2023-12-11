// Recreating  https://deannacouchblog.wordpress.com/2016/12/09/concrete-poetry/
boolean savedImage = false;

PVector[] poemPositions = new PVector[37]; // Array to hold PVector positions for each line

String line1 = "Though";
String line2 = "the air, the";
String line3 = "seagull flies, down";
String line4 = "to the water, the";
String line5 = "seagull dives, beak";
String line6 = "full of fish, wings";
String line7 = "capture the wind,";
String line8 = "he is king of the";
String line9 = "ocean skies. His";
String line10 = "majestic feathers,";
String line11 = "shine in the sun";
String line12 = "and glow under";
String line13 = "the great moon";
String line14 = "his eyes, all-knowing,";
String line15 = "show no fear. He spins, he twirls, he";
String line16 = "plummets, forever striving to learn";
String line17 = "more, forever yearning to improve, flying";
String line18 = "free, slicing the clouds with silvery";
String line19 = "wings and a bright beak, gliding beautifully across";
String line20 = "the rippled night, showing off for the empty seas who";
String line21 = "support him fully. Two shimmering birds match his pace,";
String line22 = "they bring him to";
String line23 = "a place, called heaven,";
String line24 = "where he can learn,";
String line25 = "forever, in peace and";
String line26 = "harmony, amongst";
String line27 = "others of his kind,";
String line28 = "others that";
String line29 = "strive to";
String line30 = "learn, others";
String line31 = "who understand";
String line32 = "his pain, for";
String line33 = "he is the";
String line34 = "outcast";
String line35 = "that";
String line36 = "changes";
String line37 = "history.";

void setup() 
{
  size(580, 800); // Set canvas size
  
  // Initialize PVector positions for each line
  int lineHeight = 20; // Adjust the line height
  for (int i = 0; i < poemPositions.length; i++) 
  {
    poemPositions[i] = new PVector(0, 50 + i * lineHeight);
  }
}

void draw() 
{
  background(255);
  fill(0);
  textSize(16);
  textAlign(LEFT);
  
  // Display each line of the poem
  text(line1, 380, poemPositions[0].y);
  text(line2, 338, poemPositions[1].y);
  text(line3, 293, poemPositions[2].y);
  text(line4, 244, poemPositions[3].y);
  text(line5, 231, poemPositions[4].y);
  text(line6, 220, poemPositions[5].y);
  text(line7, 219, poemPositions[6].y);
  text(line8, 220, poemPositions[7].y);
  text(line9, 223, poemPositions[8].y);
  text(line10, 227, poemPositions[9].y);
  text(line11, 225, poemPositions[10].y);
  text(line12, 221, poemPositions[11].y);
  text(line13, 214, poemPositions[12].y);
  text(line14, 212, poemPositions[13].y);
  text(line15, 93, poemPositions[14].y);
  text(line16, 85, poemPositions[15].y);
  text(line17, 58, poemPositions[16].y);
  text(line18, 149, poemPositions[17].y);
  text(line19, 159, poemPositions[18].y);
  text(line20, 162, poemPositions[19].y);
  text(line21, 149, poemPositions[20].y);
  text(line22, 151, poemPositions[21].y);
  text(line23, 131, poemPositions[22].y);
  text(line24, 117, poemPositions[23].y);
  text(line25, 100, poemPositions[24].y);
  text(line26, 73, poemPositions[25].y);
  text(line27, 70, poemPositions[26].y);
  text(line28, 70, poemPositions[27].y);
  text(line29, 66, poemPositions[28].y);
  text(line30, 66, poemPositions[29].y);
  text(line31, 75, poemPositions[30].y);
  text(line32, 81, poemPositions[31].y);
  text(line33, 90, poemPositions[32].y);
  text(line34, 105, poemPositions[33].y);
  text(line35, 121, poemPositions[34].y);
  text(line36, 121, poemPositions[35].y);
  text(line37, 128, poemPositions[36].y);


  // Save the output as an image file
  if (!savedImage) 
  {
     save("poem_output.png");
     savedImage = true;
   }
  
}
