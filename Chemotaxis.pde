Bacteria [] bug;

void setup(){
  size(400,400);
  bug = new Bacteria[50];
  for (int i = 0; i<bug.length;i++){
   bug[i] = new Bacteria(255,255,255);
   frameRate(40);
  }
} 

void draw(){
  background(255);
  for (int i = 0; i < bug.length; i++) {
  bug[i].move();
  bug[i].show();
  }
}



class Bacteria{
  color myC;
  float myX, myY;
  
Bacteria(){
    myC = color(255);
    myX = 100;
    myY = 100;
  }
Bacteria(int x, int y, int c){ //overloaded constructor, with differnt NUMBER of argument
    myC = color(100, c, 0);
    myX = x;
    myY = y;
  }
  
  void show(){
    fill(myC);
    ellipse(myX+(int)(Math.random()*10),myY+(int)(Math.random()*10),20,20);
  }
  
  void move(){
    if (mouseX - myX <= 0){
     myX-=(int)(Math.random()*6)-2;
    }
    else if (mouseX - myX >= 0){
     myX+=(int)(Math.random()*6)-2;
    }
    if (mouseY - myY <= 0){
     myY-=(int)(Math.random()*6)-2;
    }
    if (mouseY - myY >= 0){
     myY+=(int)(Math.random()*6)-2;
    }
  }
}
