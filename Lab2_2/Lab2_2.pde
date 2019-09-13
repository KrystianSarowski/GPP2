// An array to keep track of how often random numbers are picked
float[] randomCounts;
color[] colorarray;

void setup() {
  size(1024,768);
  randomCounts = new float[20];
  colorarray = new color[20];
  
  for (int x = 0; x < randomCounts.length; x++) {
    int r = int(random(255));
    int g = int(random(255));
    int b = int(random(255));
    colorarray[x] = color(r,g,b);
  }

}

void draw() {
  background(255);
  
  // Pick a random number and increase the count
  int index = int(random(randomCounts.length));
  randomCounts[index] += getBinomial(2, 0.2);   
  
  //for (int index = 0; index < randomCounts.length; index++) 
  //{
    //randomCounts[index] += getBinomial(2, 0.2);   
  //} 
  
  // Draw a rectangle to graph results
  stroke(0);
  strokeWeight(2);
  
  
  int w = width/randomCounts.length;

  for (int x = 0; x < randomCounts.length; x++) {

    fill(colorarray[x]);
    rect(x*w,0,w-1,randomCounts[x]);
  } 
}

public static int getBinomial(int n, double p) {
  
  int x = 0;
  
  for(int i = 0; i < n; i++) 
  {
    if(Math.random() < p)
    {
      x += 5;
    }
  }
  return x;
}

public static int getPoisson(double lambda) {
  double L = Math.exp(-lambda);
  double p = 1.0;
  
  int k = 0;
  do 
  {
    k++;
    p *= Math.random();
  } while (p > L);

  return k - 1;
}
