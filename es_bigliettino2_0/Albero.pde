public class Albero {
   private float x; 
   private float y; 
   private float z; 
   private float h; 
   public static final color colore_albero = #006400;

   public Albero(float x, float y, float z, float h) {
       this.x = x; 
       this.y = y; 
       this.z = z;  
       this.h = h; 
   }
   public void draw() {
       fill(colore_albero);
       triangle(x-z/2, y, x, y-h, x+z/2, y); 
   }
}
