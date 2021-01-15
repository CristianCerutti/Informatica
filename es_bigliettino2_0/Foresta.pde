public class Foresta{
  private Albero[] alberi;          //visibile solo nella classe foresta
  private float num1 = 0.6;
  
  public Foresta(int max){
    alberi = new Albero[max];
    for(int i = 0; i<max; i++){
      alberi[i] = new Albero(width/16 * num1, height, width/10, height/2.5);
      num1 += 0.6;
  }
}

public void draw(){
  for(int a = 0; a<alberi.length; a++){
    alberi[a].draw();
  }
} 
}
