Star[] light= new Star[200];//your variable declarations here
Spaceship metal= new Spaceship();
public void setup() 
{
  size(500,500);
    for (int i=0; i < light.length;i++)
  {
    light[i] = new Star();
  }//your code here
}
public void draw() 
{
  background(0);
    for (int i=0; i<light.length;i++)
  {
    light[i].show();
  }
  metal.show();
  metal.move();
  //your code here
}
public void keyPressed()
{
  if(key=='a')
  {
    metal.turn(-6);
  }
   if(key=='w')
  {
    metal.accelerate(.3);
  }
  if(key=='s')
  {
    metal.accelerate(-.3);
  }
  if(key=='d')
  {
    metal.turn(6);
  }
  if(key=='e')
  {
    metal.setX((int)(Math.random()*500)-250);
    metal.setY((int)(Math.random()*500)-250);
  }
}
