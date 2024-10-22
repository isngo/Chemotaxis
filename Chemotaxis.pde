 
 Projectile[] bullets;
 void setup()   
 {     
   size(500,500);
   background(97,16,16); 
   bullets = new Projectile[30];
   for (int i = 0; i < bullets.length; i++){
     bullets[i] = new Projectile();
   }
 }   
 void draw()   
 {    
   background(97,16,16);
   for (int i = 0; i < bullets.length; i++){
     bullets[i].move();
     bullets[i].show();
   }
 }  
 class Projectile    
 {     
   int myX;
   int myY;
   int myColor;
   int size;
   int moveSpeed;
   
   Projectile(){
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*100);
     size = (int)(Math.random()*50)+20;
     if (size > 45){
       myColor = color(12,46,240);
     } else {
       myColor = color(240,20,12);
     }
   }
   
   void move(){
     if (size > 45){
       moveSpeed = 0;
     } else {
       moveSpeed = 1;
     } 
     
     if (mouseX > myX){
       myX = myX + (int)(Math.random()*5)-1 + moveSpeed;
     } else {
       myX = myX - (int)(Math.random()*5)+1 - moveSpeed;
     } 
     
     if (mouseY > myY){
       myY = myY + (int)(Math.random()*5)-1 + moveSpeed;
     } else {
       myY = myY - (int)(Math.random()*5)+1 - moveSpeed;
     } 
   }
   
   void show(){
     stroke(myColor);
     strokeWeight(3);
     fill(255);
     ellipse(myX,myY,size,size);
   }
 }    
