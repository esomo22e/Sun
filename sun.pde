float theta=0;
 
void setup() {
  size(700, 700);
  background(255);
 // smooth();
  //colorMode(HSB);
}
 
void draw() {
 // noStroke();
 drawWaves();
 
}

void drawWaves(){
   fill(0,30);
  filter(DILATE);
  filter(BLUR,0.6);
  rect(0, 0, width, height);
  strokeWeight(2);
  theta+=0.5;
  
  float angle=(2*PI)/25;
  fill(0);
  stroke(230);
 
  translate(width/2, height/2);
  //n the amount of waves
  for (int j=0;j<25;j++) {
    beginShape();
    pushMatrix();
    rotate((angle*j));
    //kom size
    for (int i=0;i<20;i++) {
     stroke(mouseX,mouseY/2,0);
      curveVertex(sin(theta-i)*i, i*20);
    }
    endShape();
    popMatrix();
  }
}

void keyPressed()

{
 if(key == 's' || key == 'S')
 {
   saveFrame("circ-###.jpg");
  }
}



