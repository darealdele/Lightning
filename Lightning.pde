int startX = 150;
int endX = 150;
int startY = 80;
int endY = 0;
void setup()
{
  size(400,400);
  background(29,49,222);
  noStroke();
  fill(180);
  rect(0,0,400,40);
  ellipse(0,40,200,80);
  ellipse(100,40,200,80);
  ellipse(200,40,200,90);
  ellipse(300,40,200,110);
  ellipse(400,40,200,80);
  ellipse(500,40,200,80);
 
}
void draw()
{
    int red = (int)(Math.random()*255);
    int green = (int)(Math.random()*255);
    int blue = (int)(Math.random()*255);
    int opacity = 255;
    stroke(red,green,blue,opacity);
    opacity -= 10;
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
  startY = 80;
  endY = 0;
}


