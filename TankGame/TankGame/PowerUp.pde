class PowerUp {
  float x, y, w, h, speed;
  char type;
  //PImage obst1;
  //char idir;

  //constructor
  PowerUp(float x, float y) {
    this.x = x;
    this.y = y;
    w = 100;
    h = 100;
    speed = 5;
    if (random(3) == 1) {
      type = 'h';
    } else if (random(2) == 1) {
      type = 't';
    } else {
      type = 'a';
    } 
  }

  void display() {
    if(type == 'a') {
      fill(200,0,0);
      ellipse(x,y,w,h);
      fill(255);
      text ("Ammo", x, y);
    } else if(type == 'h') {
      fill(200,0,0);
      ellipse(x,y,w,h);
    } else if(type == 't') {
      fill(200,0,0);
      ellipse(x,y,w,h);
    }
    //imageMode(CENTER);
    //image(obst1, x, y);
  }

  void move() {
    y =y+ speed;
  }

  boolean reachedSide() {
    return x>= width+150 || x <= -150 || y > height + 150 || y < -150;
  }
}
