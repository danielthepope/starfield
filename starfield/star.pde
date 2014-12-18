class star {
  color colour;
  float x = 0;
  float y = 0;
  float focus = 3;
  float twinkle = 0.2;
  float magnitude = 4;
  int age = 0;
  
  star(float posX, float posY, float size, color starColour) {
    x = posX;
    y = posY;
    colour = starColour;
    magnitude = size;
    age = random(5000);
  }
  
  void render() {
    strokeWeight(abs(focus * noise(age / 20.0)) + magnitude);
    color lerp = lerpColor(colour, #ffffff, noise((age+500) / 20.0));
    color c = color(red(lerp), green(lerp), blue(lerp),
        128 + (128.0*((20-abs(focus))/20.0)));
    stroke(c);
    point(x,y);
    age++;
  }
}
