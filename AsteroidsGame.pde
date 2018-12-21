Star[] light= new Star[200];//your variable declarations here
ArrayList <Asteroid> rock=new ArrayList<Asteroid>();
ArrayList<Bullet> pew=new ArrayList <Bullet>();
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
  for(int i = 0; i < rock.size(); i++)

  {
    if(dist(metal.getX(),metal.getY(),rock.get(i).getX(),rock.get(i).getY())<10)
    rock.remove(i);
  }

  for(int i = 0; i < rock.size(); i++)
  {
    for(int ii = 0; ii < pew.size(); ii++)
    {
      if(dist(rock.get(i).getX(),rock.get(i).getY(),pew.get(ii).getX(),pew.get(ii).getY())<10)
      {
        pew.remove(ii);
        rock.remove(i);
        break;
      }
    }
  }
  for(int i = 0; i < pew.size(); i++)
  {
    pew.get(i).show();
    pew.get(i).move();
  }
}//your code here
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
  if(key == ' ') // bullet
  {
    pew.add(new Bullet(metal));
  }
}
