void setup()
{
  size(300,300);
  background (0);
  strokeWeight (1);
}
int startY = 0;
int startX;
int endY;
int endX;
int large = startX + 5;
int small = startX - 5;
int lineChanger;
void draw()
{
  stroke (255);
  lineChanger = (int) (Math.random() * 301 + 1);
  startX = (int) (Math.random() * 301 + 1);
  large = startX + 5;
  small = startX - 5;
  while (endY <= 300)
  {
    endY = (int) Math.random() * (51) + 10 + endY;
    endX = (int) (Math.random() * (large - small + 1)) +1;
    endX += lineChanger;
    line (startX, startY, endX, endY);
    startY = endY;
    startX = endX;
  }
}
void mousePressed()
{
  endY = 0;
  startY = 0;
  endX = 0;
}
