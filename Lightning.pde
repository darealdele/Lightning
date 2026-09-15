int startX = 150;
int endX = 150;
int startY = 0;
int endY = 0;
void setup()
{
  size(300,300);
}
void draw()
{
  while(startX >= 0 && startY >= 0 && startX < 310 && startY < 310){
    endX = startX + (int)(Math.random() * 15) - 6;
    endY = startY + (int)(Math.random() * 9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    print(startX + " ");
    print(startY + " ");
  }
}
void mousePressed()
{
   while(startX >= 0 && startY >= 0 && startX < 310 && startY < 310){
    endX = startX + (int)(Math.random() * 15) - 6;
    endY = startY + (int)(Math.random() * 9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    print(startX + " ");
    print(startY + " ");
  }
}

