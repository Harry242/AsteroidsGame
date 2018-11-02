Star[] light= new Star[200];//your variable declarations here
Spaceship[] metal= new Spaceship[4];
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
  //your code here
}
