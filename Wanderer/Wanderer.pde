PVector loc;
PVector vel;
float diam;

void setup() {
  size(800, 600);

  //initialize variables
  loc = new PVector(random(width),random(height));
  diam = 80;
  vel = new PVector(random(-5,5),random(-5,5));
}

void draw() {
  background(0);

  ellipse(loc.x, loc.y, diam, diam);
  
  loc.add(vel);

  if (loc.x >= width) {
    loc.x = 0;     
  } else if (loc.x <= 0) {
    loc.x = width;
  }
  if (loc.y >= height) {
    loc.y = 0;
  } else if (loc.y <= 0) {
    loc.y = height;
  }
}