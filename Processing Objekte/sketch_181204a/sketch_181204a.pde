float angle;
float scale=1;
float value;
Zylinder zylinder = new Zylinder(10,6,50,200);
Kreiskegel kreiskegel = new Kreiskegel(5,50,200);

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
  noFill();
  scale(scale);
  
  rotateX(angle);
  rotateY(angle*1.5);
  rotateZ(angle*3);
  
  angle += 0.01;

  zylinder.render();
  kreiskegel.render();
}


void mouseWheel(MouseEvent event){
  scale = scale - (event.getCount()*0.05);
}
