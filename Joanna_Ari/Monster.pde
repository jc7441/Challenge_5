class Monster {

  int x;
  color shell;

  Monster(int xLoc, color shellColor) {
    x = xLoc;
    shell = shellColor;
  }

  void display() {
    // legs
    fill(209, 113, 117);
    quad(100 + x, 575, 125 + x, 454, 160 + x, 478, 170 + x, 575); // left
    quad(220 + x, 575, 235 + x, 478, 275 + x, 454, 290 + x, 575); // right
    // body
    fill(shell);
    ellipse(200 + x, 360, 220, 250); // shell
    // abdomen
    fill(209, 113, 117);
    ellipse(200 + x, 360, 150, 180);
    noFill();
    arc(200 + x, 300, 109, 20, 0, PI);
    arc(200 + x, 330, 139, 20, 0, PI);
    arc(200 + x, 360, 147, 20, 0, PI);
    arc(200 + x, 390, 139, 20, 0, PI);
    arc(200 + x, 420, 109, 20, 0, PI);
    fill(209, 113, 117);
    ellipse(200 + x, 200, 140, 170); // head
    noStroke();
    fill(157, 67, 67);
    ellipse(194 + x, 208, 8, 8);
    ellipse(205 + x, 208, 8, 8);
    fill(122, 67, 67);
    rect(160 + x, 162, 34, 3); // left eyebrow
    rect(205 + x, 162, 34, 3); // right eyebrow
    fill(255);
    ellipse(180 + x, 180, 30, 20); // left eye
    ellipse(220 + x, 180, 30, 20); // right eye
    fill(127, 4, 222);
    ellipse(180 + x, 183, 20, 20); // left eye
    ellipse(220 + x, 183, 20, 20); // right eye
    ellipseMode(CENTER); // left pupil
    fill(0);
    ellipse(180 + x, 183, 12, 12); 
    ellipseMode(CENTER); // right pupil
    fill(0);
    ellipse(220 + x, 183, 12, 12);
    fill(73, 20, 3);
    stroke(100, 0, 0);
    arc(200 + x, 225, 90, 80, 0, PI); // mouth
    // teeth
    fill(225);
    triangle(165 + x, 225, 170 + x, 265, 175 + x, 225); // left fang
    triangle(180 + x, 225, 190 + x, 245, 200 + x, 225);
    triangle(200 + x, 225, 210 + x, 245, 220 + x, 225);
    triangle(225 + x, 225, 230 + x, 265, 235 + x, 225); // right fang
    // antena
    fill(180, 182, 184);
    line(160 + x, 128, 120 + x, 70); // left
    triangle(110 + x, 80, 107 + x, 49, 130 + x, 60);
    line(235 + x, 128, 285 + x, 70); // right
    triangle(275 + x, 65, 300 + x, 58, 296 + x, 85);
    // arms
    fill(209, 113, 117);
    //rotate(radians(-20));
    ellipse(107 + x, 275, 60, 150); // right
    //rotate(radians(50));
    ellipse(295 + x, 280, 60, 150); // left
  }
  void move(int valX){
    x += valX;
  }
}