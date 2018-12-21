class Star //note that this class does NOT extend Floater
{
  private float myY,myX;
  public Star()
  {
    myX = (float)(Math.random()*500);
    myY = (float)(Math.random()*500);
  }
  public void show()
  {
    fill(255);
    ellipse(myX,myY,3,3);
  }
}
