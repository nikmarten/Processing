class Kreiskegel extends Grundformen {
  

  Kreiskegel(int segments, float r, float h) {
    this.segmentsCircle = segments;
    this.radius = r;
    this.height = h;
  }

  void render()
  {
    float angle = 2*PI/segmentsCircle;
    // draw Bottom shape
    beginShape(TRIANGLE_FAN);
    vertex(0, 0, 0);
    for (int i = 0; i <= segmentsCircle; i++) {
      float x = radius * cos(i * angle);
      float y = radius * sin(i * angle);
      vertex(x, y, 0);
    }
    endShape();
    //draw Top shape
    beginShape(TRIANGLE_FAN);
    vertex(0, 0, height);
    for (int i = 0; i <= segmentsCircle; i++) {
      float x = radius * cos(i * angle);
      float y = radius * sin(i * angle);
      vertex(x, y, 0);
    }
    endShape();
  }
}
