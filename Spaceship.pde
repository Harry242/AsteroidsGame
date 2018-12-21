class Spaceship extends Floater  
{ 
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
  public Spaceship()
  {
    myColor=255;
    corners=6;
    int[] xS={-8,-4,-8,-4,-8,16};
    int[] yS={-8,-4,0,4,8,0};
    xCorners=xS;
    yCorners=yS;
    myCenterX=myCenterY=250;
    myDirectionX=myDirectionY=0;
  }  
  //your code here
}
