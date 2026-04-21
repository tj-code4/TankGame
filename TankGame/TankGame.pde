// TJ Bowen | April 14 2026 | TankGame // I can't get my Tank to rotate, we couldn't figure out what was wrong
PImage bg;
Tank tank1;
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();
ArrayList<Projectile> projectiles = new ArrayList<Projectile>();
int score;

void setup() {
  size(750, 750);
  bg = loadImage("bg3.png");
  tank1 = new Tank();
  obstacles.add(new Obstacle(400, 300));
  obstacles.add(new Obstacle(25, 500));
  obstacles.add(new Obstacle(100, 200));
  obstacles.add(new Obstacle(200, 650));
  score = 0;
}

void draw() {
  background(127);
  imageMode(CORNER);
  image(bg, 0, 0);
  // Add timer to distribute
  //obstacle.add(new Obstacle(250, 250));
  
  //displaying Obstacles
  for (int i = 0; i < obstacles.size(); i++) {
    Obstacle obs = obstacles.get(i);
    obs.display();
    obs.move();
  //displaying Projectiles
  for (int i = 0; i < projectiles.size(); i++) {
    Projectile p = projectiles.get(i);
    p.display();
    p.move();
  }
  tank1.display();
  scorePanel();
}
void scorePanel() {
  fill(127, 127);
  rectMode(CENTER);
  rect(width/2, 30, width, 60);
  fill(255);
  textSize(30);
  textAlign(CENTER);
  text("Score:" + score, width/2, 30);
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

void mousePressed() {
  projectiles.add(new Projectile(tank1.x, tank1.y));
}
