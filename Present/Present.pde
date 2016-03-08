/** Kaylee Llewellyn
*/

void setup() {
  size(800, 800);
}

void draw() 
{ 
  //inspiration for this found on Processing.org website
  if (mousePressed) 
  {
    fill(0); // a black outline of the little square
  } 
  else 
  {
    fill(10, 200, 150); // color of the seafoam little square
  }
  rect(mouseX, mouseY, 30, 30);
  
  //Creates a gift box image
  fill(200, 50, 70);
  rect(150, 150, 500, 500);
  fill(100, 50, 100);
  rect(375, 150, 50, 500);
  fill(100, 50, 100);
  rect(150, 375, 500, 50);
  fill(100, 50, 100);
  
  //Bow
  ellipse(375, 125, 60, 90);
  fill(100, 50, 100);
  ellipse(425, 125, 60, 90);
  
}

