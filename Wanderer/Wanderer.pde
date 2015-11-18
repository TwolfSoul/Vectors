int woof = 10;
float[] diam = new float[woof];
PVector[] loc = new PVector[woof];
PVector[] vel = new PVector[woof];
PVector[] accel = new PVector[woof];

void setup() {
  size(800, 600);
for(int i = 0;i < woof; i++)
  {
    diam[i] = 80;
    loc[i] = new PVector (random(width),random(height));
    vel[i] = new PVector(5,3);
    accel[i] = new PVector(0.1,0.2);
  }
}

void draw() {
  background(0);
 for(int i = 0;i < woof; i++)
{
  noStroke();
  fill(random(255),random(255),random(255));
  ellipse(loc[i].x, loc[i].y, diam[i], diam[i]);
  
  loc[i].add(vel[i]);
  vel[i].add(accel[i]);

  if (loc[i].x >= width) {
    loc[i].x = 0;     
  } else if (loc[i].x <= 0) {
    loc[i].x = width;
  }
  if (loc[i].y >= height) {
    loc[i].y = 0;
  } else if (loc[i].y <= 0) {
    loc[i].y = height;
  }
}
}