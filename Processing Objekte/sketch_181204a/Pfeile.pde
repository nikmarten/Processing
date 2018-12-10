class Pfeile{
  color farbe;
  
  Kreiskegel kreiskegel;
  Zylinder zylinder;
  
  public Pfeile(color farbe){
    kreiskegel = new Kreiskegel(20, 100, 200);
    zylinder = new Zylinder(20, 6, 50, 300);
    this.farbe = farbe;
  }
  
  public void render(){
    pushMatrix();
    fill(farbe);
    zylinder.render();
    translate(0,0,zylinder.getBodyHeight());
    kreiskegel.render();
    popMatrix();
  }
}
