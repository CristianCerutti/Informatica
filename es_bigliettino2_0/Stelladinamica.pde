public class Stelladinamica extends Stella {
  private int speedX;
  private final int DEFAULT_VET = 1;
  
  public Stelladinamica(){
    super();
    speedX = DEFAULT_VET;
  }
  
  public void move(){
    if (getCordX()  + speedX == width) speedX = -1;
    if (getCordX()  + speedX == 0) speedX = 1;
    
    setCordX(getCordX() + speedX);
    
  }
  
  public void show(){
    move();
    super.show();
    }

 public void setSpeedX(int vel){
      this.speedX = vel;
    }
    
    public int getSpeedX(){
        return this.speedX;
    }
    
}
