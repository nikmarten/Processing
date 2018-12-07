float angleX;
float angleY;
float angleZ;
float angle;
float scale;
float value;
Zylinder zylinder = new Zylinder();
Kreiskegel kreiskegel = new Kreiskegel();

void setup() {
  size(1000,1000,P3D);
  surface.setResizable(true);
  ortho();

}
void draw(){
  background(25);
  
  translate(width/2,height/2);
  stroke(0);
  strokeWeight(0.5);
  //noFill();
  scale(scale);
  
  rotateX(angleX);
  //rotateY(angle*1.5);
  //rotateZ(angle*3);
  
  angle += 0.01;

  //zylinder.render(segmentsTop,segmentsSide,50,200);
  fill(0,255,0);
  kreiskegel.render(6,50,200);
}

void mouseDragged(MouseEvent event){
  
}

void mouseWheel(MouseEvent event){
  scale = scale - (event.getCount()*0.05);
}

void rotateX(int x){
  while (x==0){
    angleX += 0.01;
  }
}

void keyPressed(){
  if (value == 0){
    rotateX(0);
  }
}
void keyReleased(){
  if (value == 0){
    rotateX(1);
  }
}
