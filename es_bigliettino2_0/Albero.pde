public class Albero{
   private float x; 
   private float y; 
   private float z; 
   private float h; 
   public static final color colore_albero = #006400;

   public Albero(float x, float y, float z, float h){
       setX(x);
       setY(y);
       setZ(z);
       setH(h);
   }
   public void draw() {
       fill(colore_albero);
       stroke(#000000);
       triangle(x-z/2, y, x, y-h, x+z/2, y); 
   }
   
    public void setX(float x) {  
    this.x = x;
    }
    
    public void setY(float y) {  
    this.y = y;
    }
    
    public void setZ(float z) {  
    this.z = z;
    }
    
    public void setH(float h){  
    this.h = h;
    }





}
