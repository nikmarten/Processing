 class Kreiskegel extends Grundform{
 
 void render(int sidesBottom, float r, float h)
  {
    float angle = 360 /sidesBottom;
    float halfHeight = h / 2;
    float angle2 = 2*PI/sidesBottom;
    // draw top shape
    beginShape(TRIANGLE_FAN);
    vertex(0, 0, -halfHeight);
    for (int i = 0; i <= sidesBottom; i++) {
      float x = r * cos(i * angle2);
      float y = r * sin(i * angle2);
      vertex(x, y, -halfHeight);
    }
    vertex(0,0,halfHeight);
    endShape();
    beginShape(TRIANGLE_FAN);
    vertex(0, 0, -halfHeight+h);
    for (int i = 0; i <= sidesBottom; i++) {
      float x = r * cos(i * angle2);
      float y = r * sin(i * angle2);
      vertex(x, y, -halfHeight);
    }
    vertex(0,0,halfHeight);
    endShape();
  }
 }
