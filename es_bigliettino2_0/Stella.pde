public class Stella {
   private float z1; 
   private float h1;
   private float cordX;
   private float cordY;
   private float direzione;
   private static final color colore_stella = #ffff00;
  
  public Stella(){
    this.cordX = 50;
    this.cordY = 50;
    this.z1 = 50;
    this.h1 = 50;
    this.cordX = width/6;
    this.cordY = height/6;
  }
  
  public void show()throws Exception{
    fill(colore_stella);
    stroke(colore_stella);
    triangle(cordX-z1/2, cordY, cordX, cordY-h1, cordX+z1/2, cordY);
    triangle(cordX-z1/2, cordY-h1+15, cordX, cordY+15, cordX+z1/2, cordY-h1+15);  //in bassso a dx, in alto, in basso a sx
    if(direzione == -1){
      triangle(cordX-z1+115, cordY-h1+50, cordX-z1+115, cordY-h1+15, cordX+z1-30, cordY-h1+30);
    }
    else {
      triangle(cordX-z1-15, cordY-h1+50, cordX-z1-15, cordY-h1+15, cordX+z1-70, cordY-h1+30);
    }
}
  
  public void setCordX(float x) throws Exception{  
    if (cordX > width){
      throw new Exception("coordinate impossibili");
    }
    cordX = x;
}
  public void setCordY(float y){  cordY = y; }
  public void setDirezione(float direzione){  this.direzione = direzione; }
  public float getCordX(){ return cordX; }
  public float getCordY(){ return cordY; }
}
