Star[] bob= new Star[200];//your variable declarations here
public void setup() 
{
  size(500,500);
    for (int i=0; i < bob.length;i++)
  {
    bob[i] = new Star();
  }//your code here
}
public void draw() 
{
  background(0);
    for (int i=0; i<bob.length;i++)
  {
    bob[i].show();
  }
  //your code here
}
