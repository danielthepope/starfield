star[] stars;
color skyColor = #00050f;
int sketchWidth = 800;
int sketchHeight = 500;

void setup() {
  stars = new star[8];
  size(800, 500);
  background(skyColor);
  stars[0] = new star(400,250,8,#ff6020);
  stars[1] = new star(476,497,5,#ccccff);
  stars[2] = new star(519,471,5,#3333ff);
  stars[3] = new star(556,439,5,#ccccff);
  stars[4] = new star(642,273,5,#2222ff);
  stars[5] = new star(536,164,2,#ff7722);
  stars[6] = new star(560,152,1,#2277ff);
  stars[7] = new star(551,130,2,#ccccff);
}

void draw() {
  background(skyColor);
  
  translate(sketchWidth / 2, sketchHeight / 2);
  scale(0.2 * sketchWidth / (float)mouseX);
  translate(-sketchWidth / 2, -sketchHeight / 2);
  for(star s : stars) {
    s.render();
  }
}

void mouseClicked() {
  println(mouseX + ", " + mouseY);
  stroke(255);
  strokeWeight(5);
  point(mouseX, mouseY);
}
