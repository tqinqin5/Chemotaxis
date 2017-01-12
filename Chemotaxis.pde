int dim = 600, dx, dy;
Bacteria[] ar; 
void setup(){     
  noStroke();
  size(dim,dim);
  ar = new Bacteria[30];
  for(int i = 0; i < ar.length; i++){
    ar[i] = new Bacteria();
  }  
}   
void draw(){    
  background(0);
  for(int i = 0; i < ar.length; i++){
    ar[i].show();
    ar[i].move();
  }
  fill(200,80,80);
  ellipse(mouseX,mouseY,5,5);
}  
class Bacteria    
{
  int x, y, size;
  double vx, vy;
  Bacteria(){
    x = (int)(Math.random()*dim);
    y = (int)(Math.random()*dim);
    vx = 0;
    vy = 0;
    size = (int)(Math.random()*20) + 1;
  }
  void show(){
    
    fill(255-(int)(Math.random()*100),255-(int)(Math.random()*1-0),255-(int)(Math.random()*100));
    ellipse(x,y,size,size);
    fill(255,255,255,30);
    ellipse(x,y,3*size,3*size);

    
  }
  void move(){
    dx = mouseX - x;
    dy = mouseY - y;
    vx += Math.signum(dx);
    vy += Math.signum(dy);
      while(vx>10){
        vx -= .1;
      }
      while(vy>10){
        vy -= .1;
      }
      while(vx<-10){
        vx += .1;
      }
      while(vy<-10){
        vy += .1;
      }
      
    x += vx;
    y += vy;
  }
}    
