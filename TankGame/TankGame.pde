// TJ Bowen | April 14 2026 | TankGame
// I can't get my Tank to rotate, we couldn't figure out what was wrong
PImage bg;
Tank tank1;

void setup() {
  size(750, 750);
  bg = loadImage("bg3.png");
  tank1 = new Tank();
}

void draw() {
  background(127);
  imageMode(CORNER);
  image(bg, 0, 0);
  tank1.display();
}

void keyPressed() {
  if (key == 'w') {
    tank1.move('w');
  } else if (key == 's') {
    tank1.move('s');
  } else if (key == 'a') {
    tank1.move('a');
  } else if (key == 'd') {
    tank1.move('d');
  }
}
