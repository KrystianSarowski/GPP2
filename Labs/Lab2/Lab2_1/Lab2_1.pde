
//X position of the circle.
int[] randomX;

//Y position of the circle.
int[] randomY;

//Size of the circle radius.
int[] randomRadius;

//Colour of the circle.
color[] randomColours;

//Number of elements in the arrays.
int arraySize = 50;

void draw()
{
  background(255);
  
  stroke(0);
  strokeWeight(2);
  
  for(int i = 0; i < arraySize; i++)
  {
    fill(randomColours[i]);
    circle(randomX[i], randomY[i], randomRadius[i]);
  }
}

void setup()
{
  size(1000,1000);
  
  randomX = new int[arraySize];
  randomY = new int[arraySize];
  randomRadius = new int[arraySize];
  
  randomColours = new color[arraySize];
  
  for(int i = 0; i < arraySize; i++)
  {
    randomX[i] = int(random(1000));
    randomY[i] = int(random(1000));
    
    randomRadius[i] = int(random(100));
    
    int r = int(random(255));
    int g = int(random(255));
    int b = int(random(255));
    randomColours[i] = color(r,g,b);
  }
  
}
