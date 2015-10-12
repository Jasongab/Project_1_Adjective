/*The adjective described is psychedelic.
In this parallel universe ice cream licks a catbow. 
control the ice cream cone using the arrow keys but be careful
and only lick the sun if you dare! 
*/
float r;
float g; 
float b;
float d;
int counter;
int horizontalShift;
int verticalShift;
int tongueSide;
color sk1;
color sk2;
float X= mouseX;
float Y= mouseY;
int[]xpos = new int[50];// for tracking mouse
int[]ypos = new int[50];

void setup() {
  size(1400, 1200);
  for (int i=0; i<xpos.length; i++) {//shiffman ch.9
    xpos[i]=0;
    ypos[i]=0;
  }
}
void draw() {
  r=random(0, 255);
  g=random(0, 255); 
  b=random(0, 255);
  d=random(0, 255);
  background(r,g,b,d);// random background
  for (int i=0; i<xpos.length-1; i++) {
    xpos[i]=xpos[i+1];
    ypos[i]=ypos[i+1]; //shiffman ch. 9
  }
  xpos[xpos.length-1] =mouseX-500;
  ypos[ypos.length-1] =mouseY-320;
  rainbow(50,50);
  sun(#FAFF0F);
  ouch(mouseX,mouseY);
  IceCreamCone(horizontalShift,verticalShift,0);
  tongue(#FF1500,10);
   if (counter ==1){
     for(int y=0;y<1400;y++){
     if(y%2==0){
       stroke(0, 255, 255);
     }else stroke(#FF00FF);
line(0,y,1400,y);   
IceCreamCone(0,0,50);   
     
   }
   } 
   }
void IceCreamCone(int horizontalShift,int verticalShift,int dialated) {
  fill(#D5D881);
  triangle (550+horizontalShift, 400+verticalShift, 650+horizontalShift, 400+verticalShift, 600+horizontalShift, 600+verticalShift);
  fill(0);
  fill(255, 0, 0);
  ellipse(600+horizontalShift, 330+verticalShift, 20, 10);//nose
  ellipse(600+horizontalShift, 400+verticalShift, 95, 5);  //shadow
  fill(0, 255, 255);
  ellipse(600+horizontalShift, 380+verticalShift, 100, 70);//top scoop
  fill(#FF00FF);  
  ellipse(600+horizontalShift, 315+verticalShift, 100, 70);//bottom scoop
  fill(0);
  ellipse(580+horizontalShift, 315+verticalShift, 20, 40);//left blackspace
  fill(0);
  ellipse(620+horizontalShift, 315+verticalShift, 20, 40);//right blackspace
  fill(255);
  ellipse(580+horizontalShift, 315+verticalShift, 15+dialated, 30+dialated);//left whitespace
  ellipse(620+horizontalShift, 315+verticalShift, 15+dialated, 30+dialated);//right whitespace
  fill(0);
  ellipse(580+horizontalShift, 315+verticalShift, 10+dialated, 20+dialated);// left pupil
  fill(0);
  ellipse(620+horizontalShift, 315+verticalShift, 10+dialated, 20+dialated);//right pupil
 
 //mouth
 fill(0);
 ellipse(600+horizontalShift,380+verticalShift,70,50);
 
 //teeth 
 fill(255);
  rect(585+horizontalShift,365+verticalShift,5,10);
  rect(585+horizontalShift,385+verticalShift,5,10);
  rect(605+horizontalShift,365+verticalShift,5,10);
  rect(605+horizontalShift,385+verticalShift,5,10);
}
 void tongue(color sk1, int tongueSide){
  fill(sk1);
  int x = mouseX;
  int y = mouseY;
   
  if (y>380){
    tongueSide=tongueSide;//for thinking purposes
  }else {
    tongueSide = -tongueSide;
    if (frameCount%8==0){
       tongueSide=-tongueSide;
    }
  }

  beginShape();
  vertex(575+horizontalShift, 380+verticalShift);
  vertex(x-12,y);
  vertex(x-7, int(y+tongueSide));
  vertex(x+7, int(y+tongueSide)); //tongue upside down correction
  vertex(x+12, y);
  vertex(620+horizontalShift,380+verticalShift); 
  endShape (CLOSE);
  fill(0);
  beginShape();
  vertex(600+horizontalShift,380+verticalShift);
  vertex(601+horizontalShift,380+verticalShift);
  vertex(mouseX,mouseY);//tongueEnd
  endShape (CLOSE); 
  }

void rainbow(int x, int y) { //outer to inner circles
  fill(r, g, b); 
  ellipse(mouseX, mouseY, 120+x, 120+y);
  fill(255, 0, 0); 
  ellipse(mouseX, mouseY, 110+x, 110+y);
  fill(257, 127, 0); 
  ellipse(mouseX, mouseY, 100+x, 100+y);
  fill(255, 255, 0); 
  ellipse(mouseX, mouseY, 90+x, 90+y);
  fill(0, 255, 0);
  ellipse(mouseX, mouseY, 90+x, 90+y);
  fill(0, 0, 255); 
  ellipse(mouseX, mouseY, 80+x, 80+y);
  fill(75, 0, 130); 
  ellipse(mouseX, mouseY, 70+x, 70+y);
  fill(150, 0, 210); 
  ellipse(mouseX, mouseY, 60+x, 60+y);
  fill(r, g, b); 
  noStroke();
  ellipse(mouseX, mouseY+25, 80+x, 80+y);
  rect(mouseX-60, mouseY-15, 70+x, 50+y);
  //cat
  stroke(255);
  line(mouseX+10,mouseY+32,mouseX+14,mouseY+34);
  line(mouseX+10,mouseY+30,mouseX+14,mouseY+28);
  line(mouseX-10,mouseY+32,mouseX-14,mouseY+34);
  line(mouseX-10,mouseY+30,mouseX-14,mouseY+28);
  noStroke();
  fill(0);
  ellipse(mouseX-40, mouseY, 20, 40);  
  ellipse(mouseX+40, mouseY, 20, 40);
  fill(#15E86B);
  ellipse(mouseX-40, mouseY, 18, 36);
  ellipse(mouseX+40, mouseY, 18, 36);
  fill(0);
  ellipse(mouseX+40, mouseY, 4, 16);
  ellipse(mouseX-40, mouseY, 4, 16);
  fill(#15E86B);
  triangle(mouseX-15, mouseY+22, mouseX+15, mouseY+22, mouseX, mouseY+40); //nose
  fill(255);
  line(mouseX+500,mouseY+5,mouseX+10,mouseY+2);
   for (int i=0; i<xpos.length-1; i++) {
    xpos[i]=xpos[i+1];
    ypos[i]=ypos[i+1];
  }
  xpos[xpos.length-1] =mouseX-500;//tracking
  ypos[ypos.length-1] =mouseY-320; }

void sun (color sk2){
  fill(sk2);
  ellipse(0, 0, 500, 500);
  pushMatrix();
  rotate(PI/5.0);
  rect(220, 130, 50, 5); 
  translate(20, -60);
  rect(230, 130, 50, 5);
  translate(20, -60);
  rect(220, 130, 50, 5);
  translate(20, -60);
  rect(200, 130, 50, 5);
  popMatrix();
}

void keyPressed(){ //reverse shifting ice cream cone
  if (key == CODED) {
    if (keyCode == DOWN) {
      horizontalShift = horizontalShift+50;
    } else if (keyCode == UP ) {
      horizontalShift = horizontalShift-50;
    } else if  (keyCode == RIGHT) {
      verticalShift = verticalShift + 50; 
    } else if  (keyCode == LEFT){
   
  }}}
  
  void ouch(float x, float y){ //when click on sun, tongue dissapears away, pupils dialate 
  x=mouseX;
  y=mouseY;
  if(mousePressed==true&&(mouseX<200)&&(mouseY<200)){
  frameRate(1);
  counter=counter+1;
 
 
  }
  }