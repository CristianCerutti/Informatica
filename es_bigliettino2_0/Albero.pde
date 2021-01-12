public class Albero{
   private float x; 
   private float y; 
   private float z; 
   private float h; 
   public static final color colore_albero = #006400;

   public Albero(float x, float y, float z, float h)throws Exception {
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
   
    public void setX(float x) throws Exception{  
    if (x > width){
      throw new Exception("coordinate impossibili");
    }
    this.x = x;
    }
    
    public void setY(float y) throws Exception{  
    if (y > width){
      throw new Exception("coordinate impossibili");
    }
    this.y = y;
    }
    
    public void setZ(float z) throws Exception{  
    if (z > width){
      throw new Exception("coordinate impossibili");
    }
    this.z = z;
    }
    
    public void setH(float h) throws Exception{  
    if (h > width){
      throw new Exception("coordinate impossibili");
    }
    this.h = h;
    }





}
