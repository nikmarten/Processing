class Zylinder extends Grundform{
  
  int segmentsBody;
  
  Zylinder(int sidesTop, int sidesSide, float r, float h){
   this.segmentsBody = sidesSide;
   this.segmentsCircle = sidesTop;
  this.height = h;
  this.radius = r;
  
  }

  void render()
  {
    float angle = 360 /segmentsCircle;
    float halfHeight = height / 2;
    float angle2 = 2*PI/segmentsCircle;
    float segmentHeight = height/segmentsBody;
    // draw top shape
    beginShape(TRIANGLE_FAN);
    vertex(0, 0, -halfHeight);
    for (int i = 0; i <= segmentsCircle; i++) {
      float x = radius * cos(i * angle2);
      float y = radius * sin(i * angle2);
      vertex(x, y, -halfHeight);
    }
    endShape(CLOSE);
    // draw bottom shape
    beginShape(TRIANGLE_FAN);
    vertex(0, 0, halfHeight);
    for (int i = 0; i <= segmentsCircle; i++) {
      float x = radius * cos(i * angle2);
      float y = radius * sin(i * angle2);
      vertex(x, y, halfHeight);
    }
    endShape(CLOSE);
    beginShape(TRIANGLE_STRIP);
    for (int j = 0; j<segmentsBody; j++) {
      for (int i = 0; i < segmentsCircle + 1; i++) {
      float x = cos( radians( i * angle ) ) * radius;
      float y = sin( radians( i * angle ) ) * radius;
      vertex( x, y, halfHeight - (segmentHeight*j));
      vertex( x, y, -halfHeight + (segmentHeight * (segmentsBody-1-j)));
    }
    }
    
    endShape(CLOSE);
  }
}
