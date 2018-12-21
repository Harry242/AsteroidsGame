class Asteroid extends Floater
{
  private double spin=(Math.random()*10)-5;
  public void setX(int x){myCenterX=x;}  
  public int getX(){return((int)myCenterX);}   
  public void setY(int y){myCenterY=y;}   
  public int getY(){return((int)myCenterY);}   
  public void setDirectionX(double x){myDirectionX=x;}  
  public double getDirectionX(){return(myDirectionX);}   
  public void setDirectionY(double y){myDirectionY=y;}   
  public double getDirectionY(){return(myDirectionY);}   
  public void setPointDirection(int degrees){myPointDirection=degrees;}   
  public double getPointDirection(){return(myPointDirection);}
  
  public Asteroid()
{
  myCenterX=(int)(Math.random()*500);
  myCenterY=(int)(Math.random()*500);
  corners=10;
  int[] XS={-4,-2,4,2,8,2,0,-2,-8,-2};
  int[] YS={-8,-2,-8,0,2,2,8,2,0,-2};
  xCorners=XS;
  yCorners=YS;
  myColor=100;
  myDirectionX=((Math.random()*4)-2);
  myDirectionY=((Math.random()*4)-2);
}
  public void move()
  {
    turn((int)spin);
    super.move();
  }
}
