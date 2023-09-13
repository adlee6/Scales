void setup()
{
  size(500, 500);
  frameRate(4);
}

void draw()
{
  background(220);
  for (int y = 505; y > -50; y -= 36) 
  {
    for (int x = 505; x > -30; x -= 40)
    {
      scale(x, y);
    }
    for (int z = 485; z > -30; z -=40) {
      scale(z, y-18);
    }
  }

  fill(0, 0, 0);
  text("("+mouseX+","+mouseY+")", mouseX, mouseY);
}

void scale(int x, int y)
{ 
  //First scale
  int rand = 35 + (int)(10*Math.random());
  ;
  beginShape();
  curveVertex(x, y);
  curveVertex(x, y);
  curveVertex(x+20, y+5);
  curveVertex(x+20, y+rand);
  curveVertex(x, y+rand+20);
  curveVertex(x-20, y+rand);
  curveVertex(x-20, y+5);
  curveVertex(x, y);
  curveVertex(x, y);
  endShape();

  //Color
  double num = Math.random();
  if (num < .3)
    fill(50, 91, 198);
  else if (num < .6)
    fill(61, 99, 209);
  else
    fill(59, 26, 211);
}

