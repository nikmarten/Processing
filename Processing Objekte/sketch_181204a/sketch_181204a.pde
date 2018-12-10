float scale=1;
float value;
Pfeile pfeilX, pfeilY, pfeilZ;
int eyeX, eyeY;


void setup() {
  size(1000, 1000, P3D);
  surface.setResizable(true);
  pfeilX = new Pfeile(color(255, 0, 0));
  pfeilY = new Pfeile(color(0, 255, 0));
  pfeilZ = new Pfeile(color(0, 0, 255));
}
void draw() {
  background(25);
  camera(eyeX, eyeY, (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
  translate(width/2, height/2); 
  scale(scale);
  pushMatrix();
  pfeilX.render();
  popMatrix();
  rotateY(-(PI/2.0+PI));
  pushMatrix();
  pfeilY.render();
  popMatrix();
  rotateX(PI/2.0);
  pushMatrix();
  pfeilZ.render();
  popMatrix();
}


void mouseWheel(MouseEvent event) {
  scale = scale - (event.getCount()*0.05);
}

void mouseDragged(MouseEvent event) {
  if (mouseX<width && mouseX > 0 && mouseY<height && mouseY > 0) {
    eyeX -= (event.getX()-pmouseX)*2;
    eyeY -= (event.getY()-pmouseY)*2;
  }
}

void increaseRadius(int index) {
  pfeilX.zylinder.setRadius(pfeilX.zylinder.getRadius() + index);
  pfeilY.zylinder.setRadius(pfeilX.zylinder.getRadius());
  pfeilZ.zylinder.setRadius(pfeilX.zylinder.getRadius());
  pfeilX.kreiskegel.setRadius(pfeilX.kreiskegel.getRadius() + index);
  pfeilY.kreiskegel.setRadius(pfeilX.kreiskegel.getRadius());
  pfeilZ.kreiskegel.setRadius(pfeilX.kreiskegel.getRadius());
}

void increaseSeg(int index) {
  pfeilX.zylinder.setSegmentsTop(pfeilX.zylinder.getSegmentsTop()+index);
  pfeilY.zylinder.setSegmentsTop(pfeilX.zylinder.getSegmentsTop());
  pfeilZ.zylinder.setSegmentsTop(pfeilX.zylinder.getSegmentsTop());
  pfeilX.kreiskegel.setSegmentsTop(pfeilX.kreiskegel.getSegmentsTop()+index);
  pfeilY.kreiskegel.setSegmentsTop(pfeilX.kreiskegel.getSegmentsTop());
  pfeilZ.kreiskegel.setSegmentsTop(pfeilX.kreiskegel.getSegmentsTop());
}

void increaseBodySeg(int index) {
  pfeilX.zylinder.setBodySeg(pfeilX.zylinder.getBodySeg()+index);
  pfeilY.zylinder.setBodySeg(pfeilX.zylinder.getBodySeg());
  pfeilZ.zylinder.setBodySeg(pfeilX.zylinder.getBodySeg());
}

void increaseHeight(int index) {
  pfeilX.zylinder.setBodyHeight(pfeilX.zylinder.getBodyHeight()+index);
  pfeilY.zylinder.setBodyHeight(pfeilX.zylinder.getBodyHeight());
  pfeilZ.zylinder.setBodyHeight(pfeilX.zylinder.getBodyHeight());
  pfeilX.kreiskegel.setBodyHeight(pfeilX.kreiskegel.getBodyHeight()+index);
  pfeilY.kreiskegel.setBodyHeight(pfeilX.kreiskegel.getBodyHeight()+index);
  pfeilZ.kreiskegel.setBodyHeight(pfeilX.kreiskegel.getBodyHeight()+index);
}

void keyPressed() {
  if (key == 'r') {
    increaseRadius(5);
  }
  if (key =='t') {
    increaseRadius(-5);
  }
  if (key == 's') {
    increaseSeg(1);
  }
  if (key == 'a') {
    increaseSeg(-1);
  }
  if (key == 'b') {
    increaseBodySeg(1);
  }
  if (key == 'n') {
    increaseBodySeg(-1);
  }
  if (key == 'h') {
    increaseHeight(5);
  }
  if (key == 'j') {
    increaseHeight(-5);
  }
}
