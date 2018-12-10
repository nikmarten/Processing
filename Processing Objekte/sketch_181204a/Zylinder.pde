class Zylinder extends Grundformen {

  int segmentsBody;

  Zylinder(int sidesTop, int sidesSide, float r, float h) {
    this.segmentsBody = sidesSide;
    this.segmentsCircle = sidesTop;
    this.height = h;
    this.radius = r;
  }
  
  void setBodySeg(int s){
    this.segmentsBody = s;
  }
  
  int getBodySeg(){
    return segmentsBody;
  }

  void render()
  {
    float angle = 2*PI/segmentsCircle;
    float segmentHeight = height/segmentsBody;
    float bodyAngle = 2*PI/segmentsCircle;
    // Draw Top Shape
    beginShape(TRIANGLE_FAN);
    vertex(0, 0, 0);
    for (int i = 0; i <= segmentsCircle; i++) {
      float x = radius * cos(i * angle);
      float y = radius * sin(i * angle);
      vertex(x, y, 0);
    }
    endShape(CLOSE);
    // Draw Bottom Shape
    beginShape(TRIANGLE_FAN);
    vertex(0, 0, height);
    for (int i = 0; i <= segmentsCircle; i++) {
      float x = radius * cos(i * angle);
      float y = radius * sin(i * angle);
      vertex(x, y, height);
    }
    endShape(CLOSE);
    beginShape(TRIANGLE_STRIP);
    for (int j = 0; j<segmentsBody; j++) {
      for (int i = 0; i <= segmentsCircle; i++) {
        //float x = cos( radians( i * angle ) ) * radius;
        //float y = sin( radians( i * angle ) ) * radius;
        float x = cos(i*bodyAngle)*radius;       //x koordinate für einezlnen punkt
        float y = sin(i*bodyAngle)*radius;
        vertex( x, y, height - (segmentHeight*j));
        vertex( x, y, 0 + (segmentHeight * (segmentsBody-1-j)));
      }
    }

    endShape(CLOSE);
  }
}
