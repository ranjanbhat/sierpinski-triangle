float x=0,y=0;
float x1,x2,x3;
float y1,y2,y3;

void setup()
{
  fullScreen();
  //size(1154,1000);
  background(0);
  colorMode(HSB);
  x1=width/2-height/sqrt(3);x2=width/2;x3=width/2+height/sqrt(3);
  y1=height;y2=0;y3=height;
}

void nextpoint()
{
  
  float nextx,nexty;
  
  float r=random(1);
  
  if(r<1/3.0)
  {
    nextx= (x+x1)/2;
    nexty= (y+y1)/2;
  }
  
  else if(r<2/3.0)
  {
    nextx= (x+x2)/2;
    nexty= (y+y2)/2;
  }
  
  else
  {
    nextx= (x+x3)/2;
    nexty= (y+y3)/2;
  }
 
  x=nextx;
  y=nexty;
  
}

void drawpoint()
{
  strokeWeight(2);
  
 // stroke(px,py,px+py);
//  stroke(px,py,0);
 // stroke(0,py,px);
  stroke(x/4,y/5,255);
  point(x,y);
}

void triangle()
{
  stroke(255);
  strokeWeight(2);
  line(x1,y1,x2,y2);
  line(x2,y2,x3,y3);
  line(x1,y1-4,x3,y3-4);
}

void draw()
{
  triangle();
  for(int i=0; i<100; i++)
  {
  drawpoint();
  nextpoint();
  }
}
