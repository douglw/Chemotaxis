class Walker
{
  int myX,myY;
  boolean collide;
  {
    myX = myY = 250;
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*30)-15;
    myY = myY + (int)(Math.random()*30)-15;
    if(myX > width || myX < 0 || myY < 0 || myY > height){
      myX = myY = 250;
    }
  }
  void show()
  {
    if(dist(myX, myY, mouseX, mouseY) < 30){
       collide = true;
    }
    if(collide == false){
      ellipse(myX,myY,5,5);
  }
}
}
Walker bob;
Walker [] sunnysquare;
void setup()
{
  size(500,500);
  sunnysquare = new Walker[1000]; //1000 apartments
  int i = 0;
  while (i < 1000){
    sunnysquare[i] = new Walker();
    i = i + 1;
  }
}
void draw()
{
  background(#FAEED9);
  fill(#AFAFAF);
  for(int i = 0; i < sunnysquare.length; i++){
    sunnysquare[i].walk();
    sunnysquare[i].show();
   }
}
