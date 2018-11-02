class Spaceship extends Floater  
{ 
  public Spaceship()
  {
    corners=4;
    int[] xS={-8,0,-8,8};
    int[] yS={-8,0,8,0};
    xCorners =xS;
    yCorners = yS;
    void setX(int x){;}  
    public int getX();   
    public void setY(int y);   
    public int getY();   
    public void setDirectionX(double x);   
    public double getDirectionX();   
    public void setDirectionY(double y);   
    public double getDirectionY();   
    public void setPointDirection(int degrees);   
    public double getPointDirection();
    
  }
  public void show()
  {
    beginShape();
    vertex(xS,yS);
    endShape();
  }
  //your code here
}
