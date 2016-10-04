Monster carl;
color random = color(random(0, 255), random(0, 255), random(0, 255));

void setup() {
 background(255);
 size(600, 600);
 carl = new Monster(200, random);
}

void draw() {
  background(255);
  carl.display();
  carl.move(2);
  
  if(carl.x > 520) {
   carl.x = -350; 
  }
}