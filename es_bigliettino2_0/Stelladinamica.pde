public class Stelladinamica extends Stella {
  private int speedX;
  private final int DEFAULT_VET = 1;
  
  public Stelladinamica(){
    super();
    speedX = DEFAULT_VET;      //1 va verso dx, -1 va verso sinistra
  }
  
  public void move()throws Exception{
    if (getCordX()  + speedX == width){
    speedX = -1;
    setDirezione(speedX);
    }
    if (getCordX()  + speedX == 0){
    speedX = 1;
    setDirezione(speedX);
    }
    
    setCordX(getCordX() + speedX);
    
  }
  
  public void show() throws Exception {
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
