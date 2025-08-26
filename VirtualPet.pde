void setup() {
  size(400, 400);
  background(220);
}

void draw() {
  // Draw the elephant
  drawElephant();
  noLoop(); // Draw only once
}

void drawElephant() {
  // Set colors
  fill(150, 150, 150); // Gray for elephant body
  stroke(100, 100, 100); // Darker gray for outlines
  strokeWeight(2);
  
  // Body (large oval, wider than tall for side view)
  ellipse(200, 250, 140, 90);
  
  // Head (circle positioned to the right of body)
  ellipse(270, 200, 80, 75);
  
  // Single visible ear (large ellipse behind head)
  ellipse(275, 185, 45, 65);
  
  // Trunk (curved downward from front of head)
  ellipse(300, 220, 20, 35);
  ellipse(315, 245, 18, 32);
  ellipse(325, 270, 16, 28);
  ellipse(330, 295, 15, 25);
  ellipse(332, 320, 14, 22);
  ellipse(330, 345, 12, 18);
  
  // Connect trunk segments with curved lines
  line(305, 235, 310, 255);
  line(320, 260, 322, 280);
  line(326, 285, 328, 305);
  line(331, 310, 331, 330);
  line(331, 335, 328, 350);
  
  // Legs (4 legs visible from side, positioned under body)
  // Front legs (now on the right)
  rect(255-20, 275, 18, 70);
  rect(280-20, 275, 18, 70);
  // Back legs (now on the left) 
  rect(155-20, 275, 18, 70);
  rect(180-20, 275, 18, 70);
  
  // Eye (single visible eye from side view)
  fill(0); // Black for eye
  ellipse(280, 190, 10, 10);
  
  // Eye highlight
  fill(255); // White highlight
  ellipse(278, 188, 4, 4);
  
  // Single visible tusk from side
  fill(255, 255, 240); // Off-white for tusk
  triangle(305, 210, 315, 235, 300, 245);
  
  // Tail (line extending from back of body)
  stroke(100, 100, 100);
  strokeWeight(3);
  line(130, 250, 90, 280);
  
  // Tail tuft (small points clustered at end)
  strokeWeight(1);
  point(90, 280);
  point(88, 282);
  point(92, 283);
  point(89, 285);
  point(86, 283);
  
  // Ground line
  strokeWeight(1);
  line(0, 345, 400, 345);
  
  // Some grass details using points
  stroke(50, 150, 50); // Green for grass
  for (int i = 20; i < 380; i += 30) {
    point(i, 350);
    point(i + 4, 353);
    point(i + 8, 349);
    point(i + 3, 355);
  }
  
  // Add some texture lines on the body
  stroke(120, 120, 120);
  strokeWeight(1);
  line(220, 230, 200, 235);
  line(190, 225, 170, 230);
  line(160, 240, 140, 245);
}
