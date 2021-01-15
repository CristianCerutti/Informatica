class Luce{
  private float x;
  private float y;
  private float r;
  private float rand;
  private boolean accesa;
  private static final color luce_accesa1 = #ff0000;
  private static final color luce_accesa2 = #00ff00; 
  private static final color luce_spenta = #c0c0c0;
  
  Luce(float x, float y, float r, boolean accesa){      //per confrontare due stringhe stringa1.equals(stringa2);
    this.x=x;
    this.y=y;
    this.r=r;
    this.accesa = accesa;
  }
  
  public void draw(){
      if (accesa){
        rand = random(0, 8);
        if(rand > 4){
            fill(luce_accesa1);
            stroke(luce_accesa1);
            circle(x,y,r*2);
          }
        else{
            fill(luce_accesa2);
            stroke(luce_accesa2);
            circle(x,y,r*2);
          }
        }
      if (!accesa){
        fill(luce_spenta);
        stroke(luce_spenta);
        circle(x,y,r*2);
      }
  }
  
  public boolean ePremuto(float mx, float my){
    float dx = mx-x;        //per avere la distanza
    float dy = my-y;
    boolean ris = false;
    
    if(dx*dx+dy*dy < r*r){      //teorema pitagora
      accesa = !accesa;        //inversione
      ris = true;
    }
    return ris;
  }
}
