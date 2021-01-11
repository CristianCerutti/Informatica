public class Stella{
   private float z1; 
   private float h1;
   private float cordX;
   private float cordY;
   private static final color colore_stella = #ffff00;
  
  public Stella(){
    this.cordX = 50;
    this.cordY = 50;
    this.z1 = 50;
    this.h1 = 50;
    this.cordX = width/6;
    this.cordY = height/6;
  }
  
  public void show(){
    fill(colore_stella);
    stroke(#00008c);
    triangle(cordX-z1/2, cordY, cordX, cordY-h1, cordX+z1/2, cordY);
    triangle(cordX-z1/2, cordY-h1+15, cordX, cordY+15, cordX+z1/2, cordY-h1+15);  //in bassso a dx, in alto, in basso a sx
  }
  
  public void setCordX(float x){  cordX = x; }
  public void setCordY(float y){  cordY = y; }
  public float getCordX(){ return cordX; }
  public float getCordY(){ return cordY; }
}
