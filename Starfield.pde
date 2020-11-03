Firework[] explosion = new Firework[100];
void setup() {
  size(800, 800);
  background(0);
  for(int i = 0; i < explosion.length; i++) {
    explosion[i] = new Firework();
  }
  explosion[0] = new OddballFirework();
}
void draw() {
  fill(0, 0, 0, 50);
  rect(0, 0, 800, 800);
  for(int i = 0; i < explosion.length; i++) {
    explosion[i].show();
    explosion[i].move();
  }
}
void mousePressed() {
  for(int i = 0; i < explosion.length; i++) {
    explosion[i] = new Firework();
  }
  explosion[0] = new OddballFirework();
}
class Firework {
  double myX, myY, angle, speed;
  int myColor;
  Firework() {
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    myX = mouseX + (Math.random()*30) - 15;
    myY = mouseY + (Math.random()*30) - 15;
    angle = Math.random() * 2 * PI;
    speed = Math.random() * 5;
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 15.0, 15.0);
  }
  void move() { 
    myX = myX + Math.cos(angle) * speed;
    myY = myY + Math.sin(angle) * speed;
  }
}
class OddballFirework extends Firework {
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 45, 45);
  }
}
