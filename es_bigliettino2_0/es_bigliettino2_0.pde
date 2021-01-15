Stelladinamica sd;
Foresta nAlberi;
Catena luci;
private final static int N = 26;
public static final color colore_sfondo = #00008c;
public int cont = 0;

void setup(){
  size(600, 300);
  background(colore_sfondo);
  sd = new Stelladinamica();
  nAlberi = new Foresta(N);
  luci = new Catena(N);
}

public void draw(){
  background(colore_sfondo);    //per coprire la scia
  sd.show();
  nAlberi.draw();
  luci.draw();
}

public void mousePressed(){
  luci.ePremuto(mouseX, mouseY);
}
