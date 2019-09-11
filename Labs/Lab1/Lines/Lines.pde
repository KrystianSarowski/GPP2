void draw()
{
  settings();
  background(0);
  createLines(100);
}

void settings()
{
  //Size of a window
  int windowSize = 1500;
  
  size(windowSize,windowSize);
}

void createLines(float offSet)
{
  //Top point of the line
  float topX = 500.0f;    
  float topY = 300.0f;
  
  //Bottom point of the line
  float bottomX = 100.0f;
  float bottomY = 1000.0f;
  
  for(int i = 0; i < 5; i++)
  {
    line(topX + (i * offSet), topY, bottomX + (i * offSet), bottomY);
  }
  
  stroke(255,255,255);
  
  strokeWeight(offSet / 2);
}
