class Zylinder extends Grundform{

  void render(int sidesTop, int sidesSide, float r, float h)
  {
    float angle = 360 /sidesTop;
    float halfHeight = h / 2;
    float angle2 = 2*PI/sidesTop;
    float segmentHeight = h/sidesSide;
    // draw top shape
    beginShape(TRIANGLE_FAN);
    vertex(0, 0, -halfHeight);
    for (int i = 0; i <= sidesTop; i++) {
      float x = r * cos(i * angle2);
      float y = r * sin(i * angle2);
      vertex(x, y, -halfHeight);
    }
    endShape(CLOSE);
    // draw bottom shape
    beginShape(TRIANGLE_FAN);
    vertex(0, 0, halfHeight);
    for (int i = 0; i <= sidesTop; i++) {
      float x = r * cos(i * angle2);
      float y = r * sin(i * angle2);
      vertex(x, y, halfHeight);
    }
    endShape(CLOSE);
    beginShape(TRIANGLE_STRIP);
    for (int j = 0; j<sidesSide; j++) {
      for (int i = 0; i < sidesTop + 1; i++) {
      float x = cos( radians( i * angle ) ) * r;
      float y = sin( radians( i * angle ) ) * r;
      vertex( x, y, halfHeight - (segmentHeight*j));
      vertex( x, y, -halfHeight + (segmentHeight * (sidesSide-1-j)));
    }
    }
    
    endShape(CLOSE);
  }
}
