class Pfeile{
  color farbe;
  
  Kreiskegel kreiskegel;
  Zylinder zylinder;
  
  public Pfeile(color farbe){
    kreiskegel = new Kreiskegel(10, 40, 200);
    zylinder = new Zylinder(10, 6, 20, 350);
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
