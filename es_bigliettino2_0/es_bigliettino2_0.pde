Stelladinamica sd;
Albero[] nAlberi;
private final static int N = 16;
public static final color colore_sfondo = #00008c;

void setup(){
  size(600, 300);
  background(colore_sfondo);
  sd = new Stelladinamica();
  nAlberi = new Albero[N];
  try{
  for(int i = 1; i<N; i++){
    nAlberi[i] = new Albero(width/16 * i, height, width/12, height/2.5);
    }
  }
    catch(Exception e){
      e.getMessage();
  }
}

public void draw() {
  background(colore_sfondo);    //per coprire la scia
  try{
  sd.show();
  for(int a = 1; a<N; a++){
      nAlberi[a].draw();
  }
  }
  catch(Exception e){
      e.getMessage();
  }
}
