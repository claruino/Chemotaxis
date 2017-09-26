Bacteria [] colony;

void setup()
{
  size(500, 500);
  colony = new Bacteria [10];
  for(int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }
}

void draw()
{
  background(214, 104, 130);
  for (int i = 0; i < colony.length; i++)
  {
    colony[i].move();
    colony[i].show();
  }
  if(get (mouseX, mouseY) != color(214, 104, 130))
  {
    fill(163, 201, 255);
  }
  else
  {
    fill(0);
  }
  noStroke();
  rect(mouseX, mouseY, 20, 20, 30);
}

class Bacteria
{
  int myX, myY, myColor;
  
  Bacteria()
  {
    myX = myY = 250;
    myColor = (int)(Math.random()*255) + 1;
  }
  
  void move()
  {
    myX = myX + (int)(Math.random()*3) - 1;
    myY = myY + (int)(Math.random()*3) - 1;
  }
  
  void show()
  {
    fill(myColor, myColor, myColor);
    ellipse(myX, myY, 50, 50);
  }
}
