Star[] light= new Star[200];//your variable declarations here
ArrayList <Asteroid> rock=new ArrayList<Asteroid>();
Spaceship metal= new Spaceship();
public void setup() 
{
  size(500,500);
    for (int i=0; i < light.length;i++)
  {
    light[i] = new Star();
  }//your code here
    for (int i=0; i<20;i++)
    {
      rock.add(new Asteroid());
    }
}
public void draw() 
{
  background(0);
    for (int i=0; i<light.length;i++)
  {
    light[i].show();
  }
    for (int i=0; i<rock.size();i++)
  {
    rock.get(i).show();
    rock.get(i).move();
  }
  metal.show();
  metal.move();
  //your code here
}
public void keyPressed()
{
  if(key=='a')
  {
    metal.turn(-10);
  }
   if(key=='w')
  {
    metal.accelerate(.15);
  }
  if(key=='s')
  {
    metal.accelerate(-.15);
  }
  if(key=='d')
  {
    metal.turn(10);
  }
  if(key=='e')
  {
    metal.setX((int)(Math.random()*500));
    metal.setY((int)(Math.random()*500));
  }
}
