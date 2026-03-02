/**
  Assignment:Simple Coding modifications (Emoji Discussion)
  Student: Ratanak Ly
  Pasadena City College, Spring 2026
  Course Name: DMA60 Creative Coding
  Prof. George McKinney
  Project Description: This program is for creating an interactive emoji that can change eye color and mouth movement with code.
  Last Modified: Feb. 27, 2026
  */
  
  float constrainedX;// for setting mouth movements in X direction
  float constrainedY;// for setting mouth movements  in X direction 
 
  void setup (){ 
  size (400,430);
}


 //for changing eyes' color
  int value =0; 
 void  mouseDragged() {
  value = value + 5;
  if (value > 255) 
    value = 0;
 }

void draw (){
  background(0,0,0);
  

  //eyes in the background
  fill(192,192,192);
  ellipse (350,300,15,15);//left eye
  ellipse(380,300,15,15);//right eye
 
  fill(0,0,0);
  ellipse (350,300,5,5); //inner left eye
  fill(0,0,0);
  ellipse (380,300,5,5); //inner right eye
 
  //Lighting in the background
  fill(32,32,32);
  ellipse(220,50,350,400);
  fill(64,64,64);
  ellipse(200,45,340,340);
  fill(96,96,96);
  ellipse(180,50,320,300);
  fill(128,128,128);
  ellipse(170,50,300,240);
  ellipse(100,200,400,500);
 
 
  //Shirt
 fill(255,255,255);
 square(50,360,300);//sleeves
 //outer shirt
 fill(192,192,192);
 triangle(50,360,200,700,350,360);//shadow on the sleeves
 fill(32,32,32);
 noStroke();
 triangle (50,360,200,610,350,360);
 fill(64,64,64);
 triangle (56,368,200,605,339,378);
 
 //neck 
 fill (255, 229,204);
 ellipse (200,350,30,50);
 
 //shadow on the neck
 noStroke();
 fill(164,164,164);
 arc(200,346, 30,30,0, PI+QUARTER_PI);
 
//Draw face
  fill (255,229,204);
  ellipse(200,200,300,300);

//Draw left eye
  noStroke();
  fill(255,255,255);
  ellipse(100,150,45,45);
  
 //undereye for left eye
  stroke (0,0,0);
  strokeWeight(1); 
  noFill();
  arc (96,160,45,45, HALF_PI, PI);
  
 //Draw left eyeball
  fill(value,mouseX,mouseY);
  ellipse(90,140,10,10);
 
  //Draw right eye
  noStroke();
  fill(255,255,255); 
  ellipse(250,150,45,45);
  
  //undereye for right eye
  stroke(3);
  strokeWeight(1); 
  noFill();
  arc (244,160,45,45, HALF_PI, PI);
  
 //Draw right eyeball
  fill(value,mouseX,mouseY);
  ellipse(240,140,10,10);
  
//Draw mouth
  fill(64,64,64);
 constrainedX = constrain (mouseX,20, 50);
 constrainedY= constrain (mouseY, 5,25);
  ellipse(200,300,constrainedX,constrainedY);
  
//Piecing
noFill();
stroke (64,64,64);
strokeWeight (4);
arc(200, 305, 20, 20, HALF_PI, PI);

//Underneath the mouth
noFill();
strokeWeight(2);
arc (200,310,40,5,0,PI);

//nose
noFill();
strokeWeight (2);
arc(180, 200, 50, 50, HALF_PI, PI);

//Shaodw underneath the nose
fill (164.164,164);
noStroke();
arc(172, 220,20, 25,0,PI);

//hair
fill (0,0,0);
triangle (100, 25, 350, 60, 350, 140); 
fill(255, 128, 0);
triangle (140,30, 320, 100, 320, 210); 
fill(255, 128, 0);
triangle(100,35,200,40,250,140);
fill(255,128,0);
triangle(20,70,150,40,200,160);
fill(0,0,0);
triangle(94,50,180,25,250,140);

  //Shine laser at the face
  fill(255,0,0,128);
  ellipse (mouseX,mouseY,40,40);
  

}

void mousePressed(){
  println(mouseX,mouseY);
}
