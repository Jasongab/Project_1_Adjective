float r;
float g; 
float b;
float d;
int[]xpos = new int[50];
int[]ypos = new int[50];
void setup(){
size(1400,1200);background(0);
for(int i=0; i<xpos.length; i++) {
 xpos[i]=0;
 ypos[i]=0; }
}



void draw(){
    r=random(0,255);
    g=random(0,255); 
    b=random(0,255);
    d=random(0,255);
    background(r,g,b,d);

    
    for(int i=0; i<xpos.length-1; i++){
       xpos[i]=xpos[i+1];
       ypos[i]=ypos[i+1]; 
    }
    xpos[xpos.length-1] =mouseX;
    ypos[ypos.length-1] =mouseY;
  //  for(int i=0; i<xpos.length; i++) {
 //xpos[i]=xpos[i+1];
//ypos[i]=ypos[i+1]; 
 for(int i=0; i<xpos.length; i++){
   stroke(255);
   fill(#FAFF0F);
   ellipse(xpos[i],ypos[i],i+100,i+100);
 }
 

{
  fill(r,g,b); 
  ellipse(mouseX,mouseY,860,860);
  fill(255,0,0); 
  ellipse(mouseX,mouseY,850,850);
  fill(257,127,0); 
  ellipse(mouseX,mouseY,800,800);
  fill(255,255,0); 
  ellipse(mouseX,mouseY,750,750);
  fill(0,255,0);
  ellipse(mouseX,mouseY,700,700);
  fill(0,0,255); 
  ellipse(mouseX,mouseY,650,650);
  fill(75,0,130); 
  ellipse(mouseX,mouseY,600,600);
  fill(150,0,210); 
  ellipse(mouseX,mouseY,550,550);
  fill(r,g,b); 
  ellipse(mouseX,mouseY,500,500);
  
  

 
}
//draws rainbow with star based on mouse position. Must make void star(). click to add more stars, add sound playing in background, cursor goes backwards, space clicked decreaseses Frame rate







  }