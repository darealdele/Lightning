int startX = 150;
int endX = 150;
int startY = 80;
int endY = 0;
int blue = 0;
int startTime = 0;
boolean flash = false;
boolean startL = true;
boolean flashEnd = false;

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
    if(millis() - startTime > 100){
      if(blue <= 200 && flash == true){
        background(0,0,blue);
        blue += 10;
        fill(180);
        noStroke();
        rect(0,0,400,40);
        ellipse(0,40,200,80);
        ellipse(100,40,200,80);
        ellipse(200,40,200,90);
        ellipse(300,40,200,110);
        ellipse(400,40,200,80);
        ellipse(500,40,200,80);
      }
      else{
        blue = 0;
        flash = false;
        flashEnd = true;
      }
    }
    stroke(255,255,0);
    int strokeW = (int)(Math.random()*5);
    strokeWeight(strokeW);
  while(startX >= 0 && startY >= 0 && startX < 410 && startY < 410 && startL == false){
      if(millis() - startTime > .01){
        endX = startX + (int)(Math.random() * 15) - 6;
        endY = startY + (int)(Math.random() * 9);
        line(startX,startY,endX,endY);
        startX = endX;
        startY = endY;
        startTime = millis();
      }
  }
}
void mousePressed()
{
  if(flashEnd == true){
    flash = true;
    startL = false;     
  }
  startX = 150 + (int)(Math.random()*40) - 20;
  endX = 150;
  startY = 80;
  endY = 0;
}


