int startX = 150;
int endX = 150;
int startY = 0;
int endY = 0;
void setup()
{
  size(400,400);
}
void draw()
{
    int red = (int)(Math.random()*255);
    int green = (int)(Math.random()*255);
    int blue = (int)(Math.random()*255);
    stroke(red,green,blue);
    int strokeW = (int)(Math.random()*5);
    strokeWeight(strokeW);
  while(startX >= 0 && startY >= 0 && startX < 410 && startY < 410){
    endX = startX + (int)(Math.random() * 15) - 6;
    endY = startY + (int)(Math.random() * 9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 150 + (int)(Math.random()*40) - 20;
  endX = 150;
  startY = 0;
  endY = 0;
}

